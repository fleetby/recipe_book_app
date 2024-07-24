// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDtoImpl _$$UserProfileDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileDtoImpl(
      userId: json['user_id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
      followers: (json['followers'] as num).toInt(),
      following: (json['following'] as num).toInt(),
    );

Map<String, dynamic> _$$UserProfileDtoImplToJson(
        _$UserProfileDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'avatar': instance.avatar,
      'followers': instance.followers,
      'following': instance.following,
    };
