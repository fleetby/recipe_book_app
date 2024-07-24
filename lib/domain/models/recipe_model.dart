import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';

part 'recipe_model.freezed.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required int id,
    required String userId,
    required int? categoryId,
    required String title,
    required String description,
    required String? coverId,
    required List<RecipeIngredientModel>? ingredients,
    required List<RecipeDirectionModel>? directions,
    required DateTime publishedAt,
    required String? servings,
    required String? preparationTime,
    required int savedCount,
    required int commentCount,
  }) = _RecipeModel;
}
