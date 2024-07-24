import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_comment_model.freezed.dart';

@freezed
class RecipeCommentModel with _$RecipeCommentModel {
  const factory RecipeCommentModel({
    required int id,
    required int recipeId,
    required String userId,
    required String text,
  }) = _RecipeCommentModel;
}
