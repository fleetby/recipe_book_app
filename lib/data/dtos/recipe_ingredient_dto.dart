import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingredient_dto.freezed.dart';
part 'recipe_ingredient_dto.g.dart';

@freezed
class RecipeIngredientDto with _$RecipeIngredientDto {
  const factory RecipeIngredientDto({
    required String name,
    required String quantity,
  }) = _RecipeIngredientDto;

  factory RecipeIngredientDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientDtoFromJson(json);
}
