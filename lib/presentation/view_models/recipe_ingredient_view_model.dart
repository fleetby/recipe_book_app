import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingredient_view_model.freezed.dart';

@freezed
class RecipeIngredientViewModel with _$RecipeIngredientViewModel {
  const factory RecipeIngredientViewModel({
    required String name,
    required String quantityHint,
  }) = _RecipeIngredientViewModel;
}
