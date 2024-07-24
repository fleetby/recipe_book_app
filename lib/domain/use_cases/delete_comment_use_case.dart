import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipe_comments_repository.dart';

@singleton
class DeleteCommentUseCase {
  const DeleteCommentUseCase(this.recipeCommentsRepository);

  final RecipeCommentsRepository recipeCommentsRepository;

  Future<void> call(DeleteCommentUseCaseParams params) async =>
      recipeCommentsRepository.deleteComment(params.id);
}

class DeleteCommentUseCaseParams {
  const DeleteCommentUseCaseParams(this.id);

  final int id;
}
