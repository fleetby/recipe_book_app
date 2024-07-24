import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/data/caching/cache.dart';
import 'package:recipe_book_app/data/caching/typed_cache_extensions.dart';
import 'package:recipe_book_app/data/caching/typed_cache_key.dart';
import 'package:recipe_book_app/data/converters/user_profile_converters.dart';
import 'package:recipe_book_app/data/mappers/user_profile_dto_mapper.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@Singleton(as: UserProfilesRepository)
class UserProfilesRepositoryImpl implements UserProfilesRepository {
  UserProfilesRepositoryImpl(this.supabaseClient, this.cache);

  final SupabaseClient supabaseClient;
  final Cache cache;

  // Keys
  TypedCacheKey<bool> _checkIsUserFollowingCacheKey(
    String followerId,
    String followingId,
  ) =>
      TypedCacheKey<bool>('check-is-user-following-$followerId-$followingId');

  TypedCacheKey<List<UserProfileModel>> _getFollowersCacheKey(
    String followingId,
  ) =>
      TypedCacheKey<List<UserProfileModel>>('get-followers-$followingId');

  TypedCacheKey<List<UserProfileModel>> _getFollowingCacheKey(
    String followerId,
  ) =>
      TypedCacheKey<List<UserProfileModel>>('get-following-$followerId');

  TypedCacheKey<UserProfileModel> _getUserProfileCacheKey(String id) =>
      TypedCacheKey<UserProfileModel>('user-profile-$id');

  /// Read-only view contains additional profile data
  static const _userProfileViewTableName = 'UserProfileView';

  /// Write
  static const _userProfileTableName = 'UserProfile';

  static const _followTableName = 'UserFollow';

  final _authenticatedUserProfileChangedController =
      StreamController<void>.broadcast();
  final _isFollowingChangedController =
      StreamController<(String, String, bool)>.broadcast();
  final _userProfileChangedController = StreamController<String>.broadcast();

  @override
  Future<UserProfileModel?> getUserProfileById(
    String id, {
    bool omitCache = false,
  }) async {
    final cacheKey = _getUserProfileCacheKey(id);
    if (!omitCache && cache.getTyped(cacheKey) != null) {
      return cache.getTyped(cacheKey);
    }

    final dto = await supabaseClient
        .from(_userProfileViewTableName)
        .select()
        .eq('user_id', id)
        .maybeSingle()
        .withConverter(maybeSingleUserProfileConverter);

    final model = dto?.userProfileModel;

    if (model != null) {
      cache.setTyped(cacheKey, model);
    }

    return model;
  }

  @override
  Future<UserProfileModel> upsertUserProfile({
    required String name,
    required String? avatar,
  }) async {
    final userId = supabaseClient.auth.currentUser!.id;

    await supabaseClient.from(_userProfileTableName).upsert({
      'user_id': userId,
      'name': name,
      'avatar': avatar,
    });

    // We cannot update the view in PostgreSQL, so we update the table directly.
    // But we cannot select() from the previous result, because the table does not
    // provide the additional profile data we need.
    final model = await getUserProfileById(userId, omitCache: true);

    notifyAuthenticatedUserProfileChanged();
    notifyUserProfileChanged(userId);

    return model!;
  }

  @override
  Future<void> followUser(String userId) async {
    final currentUserId = supabaseClient.auth.currentUser!.id;
    await supabaseClient.from(_followTableName).insert({
      'follower_id': currentUserId,
      'following_id': userId,
    });

    cache.setTyped(_checkIsUserFollowingCacheKey(currentUserId, userId), true);

    final followerCacheKey = _getUserProfileCacheKey(currentUserId);
    final followerProfile = cache.getTyped(followerCacheKey);
    if (followerProfile != null) {
      cache.setTyped(
        followerCacheKey,
        followerProfile.copyWith(
          following: followerProfile.following + 1,
        ),
      );
    }

    final followingCacheKey = _getUserProfileCacheKey(userId);
    final followingProfile = cache.getTyped(followingCacheKey);
    if (followingProfile != null) {
      cache.setTyped(
        followingCacheKey,
        followingProfile.copyWith(
          followers: followingProfile.followers + 1,
        ),
      );
    }

    notifyIsFollowingChanged(currentUserId, userId, true);
    notifyUserProfileChanged(userId);
  }

  @override
  Future<void> unfollowUser(String userId) async {
    final currentUserId = supabaseClient.auth.currentUser!.id;
    await supabaseClient
        .from(_followTableName)
        .delete()
        .eq('following_id', userId)
        .eq('follower_id', currentUserId);

    cache.setTyped(_checkIsUserFollowingCacheKey(currentUserId, userId), false);

    final followerCacheKey = _getUserProfileCacheKey(currentUserId);
    final followerProfile = cache.getTyped(followerCacheKey);
    if (followerProfile != null) {
      cache.setTyped(
        followerCacheKey,
        followerProfile.copyWith(
          following: followerProfile.following - 1,
        ),
      );
    }

    final followingCacheKey = _getUserProfileCacheKey(userId);
    final followingProfile = cache.getTyped(followingCacheKey);
    if (followingProfile != null) {
      cache.setTyped(
        followingCacheKey,
        followingProfile.copyWith(
          followers: followingProfile.followers - 1,
        ),
      );
    }

    notifyIsFollowingChanged(currentUserId, userId, false);
    notifyUserProfileChanged(userId);
  }

  @override
  Future<bool> checkIsUserFollowing(
    String followerId,
    String followingId,
  ) async {
    final cacheKey = _checkIsUserFollowingCacheKey(followerId, followingId);
    if (cache.getTyped(cacheKey) != null) {
      return cache.getTyped(cacheKey)!;
    }

    final result = await supabaseClient
        .from(_followTableName)
        .select()
        .eq('follower_id', followerId)
        .eq('following_id', followingId)
        .maybeSingle();

    final value = result != null;
    cache.setTyped(cacheKey, value);

    return value;
  }

  @override
  Future<List<UserProfileModel>> getFollowers(String followingId) async {
    final cacheKey = _getFollowersCacheKey(followingId);
    if (cache.getTyped(cacheKey) != null) {
      return cache.getTyped(cacheKey)!;
    }

    final result = await supabaseClient
        .from(_followTableName)
        .select('follower:follower_id(*)')
        .eq('following_id', followingId)
        .withConverter(listUserProfileConverter);

    final models = result.map((e) => e.userProfileModel).toList();

    cache.setTyped(cacheKey, models);

    return models;
  }

  @override
  Future<List<UserProfileModel>> getFollowing(
    String followerId, {
    bool invalidateCache = false,
  }) async {
    final cacheKey = _getFollowingCacheKey(followerId);
    if (cache.getTyped(cacheKey) != null) {
      if (invalidateCache) {
        cache.deleteTyped(cacheKey);
      } else {
        return cache.getTyped(cacheKey)!;
      }
    }

    final result = await supabaseClient
        .rpc<Map<String, dynamic>>(
          'get_user_following_user_profiles',
          params: {'follower_user_id': supabaseClient.auth.currentUser!.id},
        )
        .select()
        .withConverter(listUserProfileConverter);

    final models = result.map((e) => e.userProfileModel).toList();

    cache.setTyped(cacheKey, models);

    return models;
  }

  @override
  Stream<void> get authenticatedUserProfileChanged =>
      _authenticatedUserProfileChangedController.stream;

  @override
  void notifyAuthenticatedUserProfileChanged() =>
      _authenticatedUserProfileChangedController.add(null);

  @override
  Stream<(String, String, bool)> get isFollowingChanged =>
      _isFollowingChangedController.stream;

  @override
  void notifyIsFollowingChanged(
    String followerId,
    String followingId,
    bool isFollowing,
  ) {
    _isFollowingChangedController.add((followerId, followingId, isFollowing));
  }

  @override
  Stream<String> get userProfileChanged => _userProfileChangedController.stream;

  @override
  void notifyUserProfileChanged(String userId) =>
      _userProfileChangedController.add(userId);
}
