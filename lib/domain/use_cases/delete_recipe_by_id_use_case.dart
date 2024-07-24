import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@singleton
class DeleteRecipeByIdUseCase {
  const DeleteRecipeByIdUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<void> call(DeleteRecipeByIdUseCaseParams params) async {
    await recipesRepository.deleteRecipeById(params.id);
  }
}

class DeleteRecipeByIdUseCaseParams {
  const DeleteRecipeByIdUseCaseParams({
    required this.id,
  });

  final int id;
}
