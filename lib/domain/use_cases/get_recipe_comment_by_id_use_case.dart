import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_comment_model.dart';
import 'package:recipe_book_app/domain/repositories/recipe_comments_repository.dart';

@singleton
class GetRecipeCommentByIdUseCase {
  const GetRecipeCommentByIdUseCase(this.recipeCommentsRepository);

  final RecipeCommentsRepository recipeCommentsRepository;

  Future<RecipeCommentModel?> call(
    GetRecipeCommentByIdUseCaseParams params,
  ) async =>
      recipeCommentsRepository.getRecipeCommentById(params.id);
}

class GetRecipeCommentByIdUseCaseParams {
  const GetRecipeCommentByIdUseCaseParams({required this.id});

  final int id;
}
