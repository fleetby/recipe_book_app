import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_direction_dto.freezed.dart';
part 'recipe_direction_dto.g.dart';

@freezed
class RecipeDirectionDto with _$RecipeDirectionDto {
  const factory RecipeDirectionDto({
    required String direction,
    required List<String> images,
  }) = _RecipeDirectionDto;

  factory RecipeDirectionDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeDirectionDtoFromJson(json);
}
