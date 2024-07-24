part of 'recipe_comments_bloc.dart';

@freezed
class RecipeCommentsState with _$RecipeCommentsState {
  const factory RecipeCommentsState({
    int? recipeId,
    List<RecipeCommentViewModel>? comments,
    int? totalComments,
    UserProfileModel? authenticatedUser,
    (Object, StackTrace)? error,
    OpStatus? currentOpStatus,
  }) = _RecipeCommentsState;
}
