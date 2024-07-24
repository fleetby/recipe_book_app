import 'package:recipe_book_app/domain/models/recipe_comment_model.dart';

abstract interface class RecipeCommentsRepository {
  Future<List<RecipeCommentModel>> getRecipeComments(
    int recipeId, {
    bool omitCache,
  });
  Future<RecipeCommentModel?> getRecipeCommentById(int id);
  Future<RecipeCommentModel> postComment({
    required String text,
    required int recipeId,
  });
  Future<void> deleteComment(int id);
}
