part of 'create_recipe_bloc.dart';

@freezed
sealed class CreateRecipeState with _$CreateRecipeState {
  const factory CreateRecipeState.initial() = CreateRecipeInitial;
  const factory CreateRecipeState.loading() = CreateRecipeLoading;
  const factory CreateRecipeState.success({required int recipeId}) =
      CreateRecipeSuccess;
  const factory CreateRecipeState.error() = CreateRecipeError;
}
