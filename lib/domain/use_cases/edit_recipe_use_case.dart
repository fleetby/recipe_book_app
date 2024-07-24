import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@singleton
class EditRecipeUseCase {
  const EditRecipeUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<RecipeModel> call(EditRecipeUseCaseParams params) async {
    return recipesRepository.updateRecipe(
      id: params.id,
      deleteCover: params.deleteCover,
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

class EditRecipeUseCaseParams {
  const EditRecipeUseCaseParams({
    required this.id,
    this.deleteCover = false,
    this.title,
    this.description,
    this.servings,
    this.preparationTime,
    this.coverId,
    this.ingredients,
    this.directions,
  });

  final int id;
  final bool deleteCover;
  final String? title;
  final String? description;
  final String? servings;
  final String? preparationTime;
  final String? coverId;
  final List<RecipeIngredientModel>? ingredients;
  final List<RecipeDirectionModel>? directions;
}
