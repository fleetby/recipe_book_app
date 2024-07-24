import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book_app/data/dtos/recipe_direction_dto.dart';
import 'package:recipe_book_app/data/dtos/recipe_ingredient_dto.dart';

part 'recipe_dto.freezed.dart';
part 'recipe_dto.g.dart';

@freezed
class RecipeDto with _$RecipeDto {
  const factory RecipeDto({
    required int id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'category_id') required int? categoryId,
    required String title,
    required String description,
    @JsonKey(name: 'cover_id') required String? coverId,
    required List<RecipeIngredientDto>? ingredients,
    required List<RecipeDirectionDto>? directions,
    @JsonKey(name: 'published_at') required DateTime publishedAt,
    required String? servings,
    @JsonKey(name: 'preparation_time') required String? preparationTime,
    @JsonKey(name: 'saved_count') required int savedCount,
    @JsonKey(name: 'comment_count') required int commentCount,
  }) = _RecipeDto;

  factory RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeDtoFromJson(json);
}
