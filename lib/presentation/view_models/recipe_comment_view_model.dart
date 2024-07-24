import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book_app/domain/models/recipe_comment_model.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';

part 'recipe_comment_view_model.freezed.dart';

@freezed
class RecipeCommentViewModel with _$RecipeCommentViewModel {
  const factory RecipeCommentViewModel({
    required int id,
    required String text,
    required String userId,
    required String userProfileName,
    required String? userAvatarId,
    required bool canDelete,
  }) = _RecipeCommentViewModel;

  factory RecipeCommentViewModel.mapFrom({
    required RecipeCommentModel comment,
    required UserProfileModel userProfile,
    required bool canDelete,
  }) =>
      RecipeCommentViewModel(
        id: comment.id,
        text: comment.text,
        userId: comment.userId,
        userProfileName: userProfile.name,
        userAvatarId: userProfile.avatar,
        canDelete: canDelete,
      );
}
