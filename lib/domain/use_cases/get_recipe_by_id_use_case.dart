import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@injectable
class GetRecipeByIdUseCase {
  const GetRecipeByIdUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<RecipeModel?> call(GetRecipeByIdUseCaseParams params) async =>
      recipesRepository.getRecipeById(params.id);
}

class GetRecipeByIdUseCaseParams {
  const GetRecipeByIdUseCaseParams({required this.id});

  final int id;
}
