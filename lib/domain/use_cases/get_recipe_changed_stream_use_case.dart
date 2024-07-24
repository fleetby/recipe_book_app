import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@injectable
class GetRecipeChangedStreamUseCase {
  const GetRecipeChangedStreamUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Stream<int> call(GetRecipeChangedStreamUseCaseParams params) =>
      recipesRepository.recipeChanged.where((e) {
        if (params.recipeId != null) {
          return e == params.recipeId;
        } else {
          return true;
        }
      });
}

class GetRecipeChangedStreamUseCaseParams {
  const GetRecipeChangedStreamUseCaseParams({this.recipeId});

  final int? recipeId;
}
