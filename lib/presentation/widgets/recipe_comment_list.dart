import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_comment_view_model.dart';

import 'package:recipe_book_app/presentation/widgets/recipe_comment_item.dart';

class RecipeCommentList extends StatelessWidget {
  const RecipeCommentList(
    this.comments, {
    required this.onOpenUserProfile,
    this.onDeleteComment,
    super.key,
  });

  final List<RecipeCommentViewModel> comments;
  final void Function(String userId) onOpenUserProfile;
  final void Function(int commentId)? onDeleteComment;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return RecipeCommentItem(
          comment,
          onOpenUserProfile: onOpenUserProfile,
          onDeleteComment: comment.canDelete ? onDeleteComment : null,
        );
      },
    );
  }
}
