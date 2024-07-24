part of 'recipe_bloc.dart';

@freezed
sealed class RecipeState with _$RecipeState {
  const factory RecipeState({
    RecipeViewModel? recipe,
    bool? isSaved,
    bool? isAuthorFollowed,
    bool? canEdit,
    String? authenticatedUserAvatar,
    (Object, StackTrace)? error,
  }) = _RecipeState;
}
