import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/widgets/recipe_badge.dart';

class CommentCountRecipeBadge extends StatelessWidget {
  const CommentCountRecipeBadge(
    this.commentCount, {
    super.key,
  });

  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return RecipeBadge(
      icon: PhosphorIconsRegular.chat,
      label: commentCount,
    );
  }
}
