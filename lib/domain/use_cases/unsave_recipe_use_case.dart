import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@singleton
class UnsaveRecipeUseCase {
  const UnsaveRecipeUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<void> call(UnsaveRecipeUseCaseParams params) =>
      recipesRepository.unsaveRecipe(params.id);
}

class UnsaveRecipeUseCaseParams {
  const UnsaveRecipeUseCaseParams({required this.id});

  final int id;
}
