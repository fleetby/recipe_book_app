import 'package:recipe_book_app/data/dtos/recipe_dto.dart';
import 'package:recipe_book_app/data/mappers/recipe_direction_mappers.dart';
import 'package:recipe_book_app/data/mappers/recipe_ingredient_mappers.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';

extension RecipeDtoMapper on RecipeDto {
  RecipeModel get recipeModel => RecipeModel(
        id: id,
        userId: userId,
        categoryId: categoryId,
        title: title,
        description: description,
        coverId: coverId,
        ingredients: ingredients?.map((e) => e.recipeIngredientModel).toList(),
        directions: directions?.map((e) => e.recipeDirectionModel).toList(),
        publishedAt: publishedAt,
        servings: servings,
        preparationTime: preparationTime,
        savedCount: savedCount,
        commentCount: commentCount,
      );
}
