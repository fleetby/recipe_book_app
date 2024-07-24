import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/widgets/recipe_badge.dart';

class SavedCountRecipeBadge extends StatelessWidget {
  const SavedCountRecipeBadge(
    this.savedCount, {
    this.color,
    super.key,
  });

  final String savedCount;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return RecipeBadge(
      icon: PhosphorIconsRegular.heart,
      label: savedCount,
      color: color,
    );
  }
}
