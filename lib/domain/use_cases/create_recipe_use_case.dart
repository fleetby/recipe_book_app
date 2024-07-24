import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@singleton
class CreateRecipeUseCase {
  const CreateRecipeUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<RecipeModel> call(CreateRecipeUseCaseParams params) async {
    return recipesRepository.createRecipe(
      title: params.title,
      description: params.description,
      servings: params.servings,
      preparationTime: params.preparationTime,
      coverId: params.coverId,
      ingredients: params.ingredients,
      directions: params.directions,
    );
  }
}

class CreateRecipeUseCaseParams {
  const CreateRecipeUseCaseParams({
    required this.title,
    required this.description,
    required this.servings,
    required this.preparationTime,
    required this.coverId,
    required this.ingredients,
    required this.directions,
  });

  final String title;
  final String description;
  final String servings;
  final String preparationTime;
  final String? coverId;
  final List<RecipeIngredientModel> ingredients;
  final List<RecipeDirectionModel> directions;
}
