import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_comment_model.dart';
import 'package:recipe_book_app/domain/repositories/recipe_comments_repository.dart';

@singleton
class CreateRecipeCommentUseCase {
  const CreateRecipeCommentUseCase(this.recipeCommentsRepository);

  final RecipeCommentsRepository recipeCommentsRepository;

  Future<RecipeCommentModel> call(
    CreateRecipeCommentUseCaseParams params,
  ) async =>
      recipeCommentsRepository.postComment(
        text: params.text,
        recipeId: params.recipeId,
      );
}

class CreateRecipeCommentUseCaseParams {
  CreateRecipeCommentUseCaseParams({
    required this.recipeId,
    required this.text,
  });

  final int recipeId;
  final String text;
}
