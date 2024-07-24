import 'package:recipe_book_app/domain/models/user_profile_model.dart';

abstract interface class UserProfilesRepository {
  Future<UserProfileModel?> getUserProfileById(String id);
  Future<UserProfileModel> upsertUserProfile({
    required String name,
    required String? avatar,
  });
  Future<void> followUser(String userId);
  Future<void> unfollowUser(String userId);
  Future<bool> checkIsUserFollowing(String followerId, String followingId);
  Future<List<UserProfileModel>> getFollowers(String followingId);
  Future<List<UserProfileModel>> getFollowing(
    String followerId, {
    bool invalidateCache,
  });
  Stream<void> get authenticatedUserProfileChanged;
  void notifyAuthenticatedUserProfileChanged();
  Stream<(String, String, bool)> get isFollowingChanged;
  void notifyIsFollowingChanged(
    String followerId,
    String followingId,
    bool isFollowing,
  );
  Stream<String> get userProfileChanged;
  void notifyUserProfileChanged(String userId);
}
