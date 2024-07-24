import 'package:recipe_book_app/data/dtos/recipe_ingredient_dto.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';

extension RecipeIngredientDtoMapper on RecipeIngredientDto {
  RecipeIngredientModel get recipeIngredientModel => RecipeIngredientModel(
        name: name,
        quantity: quantity,
      );
}

extension RecipeIngredientModelMapper on RecipeIngredientModel {
  RecipeIngredientDto get recipeIngredientDto => RecipeIngredientDto(
        name: name,
        quantity: quantity,
      );
}
