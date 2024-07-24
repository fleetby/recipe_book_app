part of 'edit_profile_bloc.dart';

@freezed
sealed class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.load() = EditProfileLoad;
  const factory EditProfileEvent.submit({
    required String name,
    File? newAvatar,
    @Default(false) bool deleteAvatar,
  }) = EditProfileSubmit;
}
