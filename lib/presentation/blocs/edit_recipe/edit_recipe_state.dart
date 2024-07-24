part of 'edit_recipe_bloc.dart';

@freezed
sealed class EditRecipeState with _$EditRecipeState {
  const factory EditRecipeState({
    RecipeModel? recipe,
    EditRecipeStateStatus? status,
  }) = _EditRecipeState;
}

@freezed
sealed class EditRecipeStateStatus with _$EditRecipeStateStatus {
  const factory EditRecipeStateStatus.success() = EditRecipeStateStatusSuccess;
  const factory EditRecipeStateStatus.error(
    Exception exception,
    StackTrace stackTrace,
  ) = EditRecipeStateStatusError;
  const factory EditRecipeStateStatus.loading() = EditRecipeStateStatusLoading;
  const factory EditRecipeStateStatus.deleted() = EditRecipeStateStatusDeleted;
}
