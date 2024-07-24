import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_dto.freezed.dart';
part 'user_profile_dto.g.dart';

@freezed
class UserProfileDto with _$UserProfileDto {
  const factory UserProfileDto({
    @JsonKey(name: 'user_id') required String userId,
    required String name,
    required String? avatar,
    required int followers,
    required int following,
  }) = _UserProfileDto;

  factory UserProfileDto.fromJson(Map<String, Object?> json) =>
      _$UserProfileDtoFromJson(json);
}
