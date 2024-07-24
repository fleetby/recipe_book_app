part of 'following_list_bloc.dart';

@freezed
sealed class FollowingListEvent with _$FollowingListEvent {
  const factory FollowingListEvent.load({
    String? followerId,
    @Default(false) bool invalidateCache,
  }) = FollowingListLoad;
}
