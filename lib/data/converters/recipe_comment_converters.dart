import 'package:recipe_book_app/data/converters/typedefs.dart';
import 'package:recipe_book_app/data/dtos/recipe_comment_dto.dart';

RecipeCommentDto? maybeSingleRecipeCommentConverter(MaybeSingleJson data) =>
    data != null ? RecipeCommentDto.fromJson(data) : null;

RecipeCommentDto singleRecipeCommentConverter(SingleJson data) =>
    RecipeCommentDto.fromJson(data);

List<RecipeCommentDto> listRecipeCommentConverter(ListJson data) =>
    data.map(RecipeCommentDto.fromJson).toList();
