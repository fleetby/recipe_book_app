import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingredient_model.freezed.dart';

@freezed
class RecipeIngredientModel with _$RecipeIngredientModel {
  const factory RecipeIngredientModel({
    required String name,
    required String quantity,
  }) = _RecipeIngredientModel;
}
