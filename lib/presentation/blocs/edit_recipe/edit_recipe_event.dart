part of 'edit_recipe_bloc.dart';

@freezed
sealed class EditRecipeEvent with _$EditRecipeEvent {
  const factory EditRecipeEvent.load(int recipeId) = EditRecipeLoad;
  const factory EditRecipeEvent.submit({
    required String title,
    required String description,
    required String servings,
    required String preparationTime,
    required List<(String, String)> ingredients,
    required List<DirectionsEditorItemViewModel> directions,
    required ImageItemViewModel? cover,
  }) = EditRecipeSubmit;
  const factory EditRecipeEvent.delete() = EditRecipeDelete;
}
