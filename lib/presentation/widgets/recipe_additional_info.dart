import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

class RecipeAdditionalInfo extends StatelessWidget {
  const RecipeAdditionalInfo({
    this.servings,
    this.preparationTime,
    super.key,
  });

  final String? servings;
  final String? preparationTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (servings.isNotNullOrBlank == true)
          Row(
            children: [
              const Icon(
                PhosphorIconsRegular.bowlSteam,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                tr.servingsBlockTitle,
                style: theme.textTheme.titleSmall,
              ),
              Text('$servings'),
            ],
          ),
        if (preparationTime.isNotNullOrBlank == true)
          Row(
            children: [
              const Icon(
                PhosphorIconsRegular.clock,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                tr.preparationTimeBlockTitle,
                style: theme.textTheme.titleSmall,
              ),
              Text('$preparationTime'),
            ],
          ),
      ],
    );
  }
}
