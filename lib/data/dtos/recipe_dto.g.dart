// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDtoImpl _$$RecipeDtoImplFromJson(Map<String, dynamic> json) =>
    _$RecipeDtoImpl(
      id: (json['id'] as num).toInt(),
      userId: json['user_id'] as String,
      categoryId: (json['category_id'] as num?)?.toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      coverId: json['cover_id'] as String?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => RecipeIngredientDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      directions: (json['directions'] as List<dynamic>?)
          ?.map((e) => RecipeDirectionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      publishedAt: DateTime.parse(json['published_at'] as String),
      servings: json['servings'] as String?,
      preparationTime: json['preparation_time'] as String?,
      savedCount: (json['saved_count'] as num).toInt(),
      commentCount: (json['comment_count'] as num).toInt(),
    );

Map<String, dynamic> _$$RecipeDtoImplToJson(_$RecipeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'title': instance.title,
      'description': instance.description,
      'cover_id': instance.coverId,
      'ingredients': instance.ingredients,
      'directions': instance.directions,
      'published_at': instance.publishedAt.toIso8601String(),
      'servings': instance.servings,
      'preparation_time': instance.preparationTime,
      'saved_count': instance.savedCount,
      'comment_count': instance.commentCount,
    };
