import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String userId,
    required String name,
    required String? avatar,
    required int followers,
    required int following,
  }) = _UserProfileModel;
}
