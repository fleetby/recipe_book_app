part of 'author_bloc.dart';

@freezed
sealed class AuthorEvent with _$AuthorEvent {
  const factory AuthorEvent.load(String userId) = AuthorLoad;
  const factory AuthorEvent.follow() = AuthorFollow;
  const factory AuthorEvent.unfollow() = AuthorUnfollow;
  const factory AuthorEvent.setFollowed(bool followed) = AuthorSetFollowed;
}
