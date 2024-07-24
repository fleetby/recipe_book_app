import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@injectable
class InvalidateRecipesCacheUseCase {
  const InvalidateRecipesCacheUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<void> call() => recipesRepository.invalidateRecipesCache();
}
