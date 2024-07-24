import 'package:recipe_book_app/data/converters/typedefs.dart';
import 'package:recipe_book_app/data/dtos/recipe_dto.dart';

RecipeDto singleRecipeConverter(SingleJson data) => RecipeDto.fromJson(data);

RecipeDto? maybeSingleRecipeConverter(MaybeSingleJson data) =>
    data != null ? RecipeDto.fromJson(data) : null;
