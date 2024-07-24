part of 'create_recipe_bloc.dart';

@freezed
sealed class CreateRecipeEvent with _$CreateRecipeEvent {
  const factory CreateRecipeEvent.create({
    required String title,
    required String description,
    required String servings,
    required String preparationTime,
    required ImageItemViewModel? cover,
    required List<(String, String)> ingredients,
    required List<DirectionsEditorItemViewModel> directions,
  }) = CreateRecipeCreate;
}
