import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@singleton
class SaveRecipeUseCase {
  const SaveRecipeUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<void> call(SaveRecipeUseCaseParams params) =>
      recipesRepository.saveRecipe(params.id);
}

class SaveRecipeUseCaseParams {
  const SaveRecipeUseCaseParams({required this.id});

  final int id;
}
