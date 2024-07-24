import 'package:recipe_book_app/data/dtos/recipe_direction_dto.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';

extension RecipeDirectionDtoMapper on RecipeDirectionDto {
  RecipeDirectionModel get recipeDirectionModel => RecipeDirectionModel(
        direction: direction,
        images: images,
      );
}

extension RecipeDirectionModelMapper on RecipeDirectionModel {
  RecipeDirectionDto get recipeDirectionDto => RecipeDirectionDto(
        direction: direction,
        images: images,
      );
}
