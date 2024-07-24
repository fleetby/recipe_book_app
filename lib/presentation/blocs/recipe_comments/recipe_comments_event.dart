part of 'recipe_comments_bloc.dart';

@freezed
class RecipeCommentsEvent with _$RecipeCommentsEvent {
  const factory RecipeCommentsEvent.load({
    required int recipeId,
    @Default(false) bool invalidateCache,
  }) = RecipeCommentsLoad;
  const factory RecipeCommentsEvent.createComment(String text) =
      RecipeCommentsCreateComment;
  const factory RecipeCommentsEvent.deleteComment(int commentId) =
      RecipeCommentsDeleteComment;
  const factory RecipeCommentsEvent.loadAuthenticatedUser() =
      RecipeCommentsLoadAuthenticatedUser;
}
