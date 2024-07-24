import 'package:recipe_book_app/data/dtos/recipe_comment_dto.dart';
import 'package:recipe_book_app/domain/models/recipe_comment_model.dart';

extension RecipeCommentDtoMapper on RecipeCommentDto {
  RecipeCommentModel get recipeCommentModel => RecipeCommentModel(
        id: id,
        recipeId: recipeId,
        userId: userId,
        text: text,
      );
}
