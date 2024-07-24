import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_comment_dto.freezed.dart';
part 'recipe_comment_dto.g.dart';

@freezed
class RecipeCommentDto with _$RecipeCommentDto {
  const factory RecipeCommentDto({
    required int id,
    @JsonKey(name: 'recipe_id') required int recipeId,
    @JsonKey(name: 'user_id') required String userId,
    required String text,
  }) = _RecipeCommentDto;

  factory RecipeCommentDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeCommentDtoFromJson(json);
}
