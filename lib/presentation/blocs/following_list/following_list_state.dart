part of 'following_list_bloc.dart';

@freezed
class FollowingListState with _$FollowingListState {
  const factory FollowingListState({
    @Default([]) List<UserProfileModel> followingList,
    @Default(false) bool loading,
    (Object, StackTrace)? error,
  }) = _FollowingListState;
}
