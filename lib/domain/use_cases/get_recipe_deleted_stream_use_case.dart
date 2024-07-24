import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@singleton
class GetRecipeDeletedStreamUseCase {
  const GetRecipeDeletedStreamUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Stream<int> call(GetRecipeDeletedStreamUseCaseParams params) =>
      recipesRepository.recipeDeleted.where((e) {
        if (params.recipeId != null) {
          return e == params.recipeId;
        }
        return true;
      });
}

class GetRecipeDeletedStreamUseCaseParams {
  const GetRecipeDeletedStreamUseCaseParams([this.recipeId]);

  final int? recipeId;
}
