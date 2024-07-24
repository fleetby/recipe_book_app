import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_comment_model.dart';
import 'package:recipe_book_app/domain/repositories/recipe_comments_repository.dart';

@injectable
class GetRecipeCommentsUseCase {
  const GetRecipeCommentsUseCase(this.recipeCommentsRepository);

  final RecipeCommentsRepository recipeCommentsRepository;

  Future<List<RecipeCommentModel>> call(
    GetRecipeCommentsUseCaseParams params,
  ) async =>
      recipeCommentsRepository.getRecipeComments(
        params.recipeId,
        omitCache: params.omitCache,
      );
}

class GetRecipeCommentsUseCaseParams {
  const GetRecipeCommentsUseCaseParams({
    required this.recipeId,
    this.omitCache = false,
  });

  final int recipeId;
  final bool omitCache;
}
