// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeCommentDtoImpl _$$RecipeCommentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeCommentDtoImpl(
      id: (json['id'] as num).toInt(),
      recipeId: (json['recipe_id'] as num).toInt(),
      userId: json['user_id'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$RecipeCommentDtoImplToJson(
        _$RecipeCommentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipe_id': instance.recipeId,
      'user_id': instance.userId,
      'text': instance.text,
    };
