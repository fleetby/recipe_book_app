import 'package:recipe_book_app/data/dtos/recipe_dto.dart';

Iterable<RecipeDto> recipeListConverter(List<Map<String, dynamic>> data) =>
    data.map(RecipeDto.fromJson);
