part of 'author_bloc.dart';

@freezed
class AuthorState with _$AuthorState {
  const factory AuthorState({
    UserProfileModel? userProfile,
    @Default(false) bool followed,
    @Default(false) bool isMe,
    (Object, StackTrace)? error,
  }) = _AuthorState;
}
