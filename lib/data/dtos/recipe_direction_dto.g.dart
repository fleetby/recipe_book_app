// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_direction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDirectionDtoImpl _$$RecipeDirectionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeDirectionDtoImpl(
      direction: json['direction'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RecipeDirectionDtoImplToJson(
        _$RecipeDirectionDtoImpl instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'images': instance.images,
    };
