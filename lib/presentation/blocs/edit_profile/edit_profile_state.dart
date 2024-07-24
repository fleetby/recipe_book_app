part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    UserProfileModel? userProfile,
    @Default(false) bool loading,
    (Exception, StackTrace)? error,
    @Default(false) bool success,
  }) = _EditProfileState;
}
