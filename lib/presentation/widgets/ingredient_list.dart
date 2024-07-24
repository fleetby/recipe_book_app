import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/recipe_additional_info.dart';

class IngredientList extends StatelessWidget {
  const IngredientList(
    this.ingredients, {
    this.servings,
    this.preparationTime,
    super.key,
  });

  final List<RecipeIngredientModel> ingredients;
  final String? servings;
  final String? preparationTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    final divider = DottedLine(
      dashColor: theme.colorScheme.onSurface,
    );
    return ingredients.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                tr.ingredientsLabel,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              RecipeAdditionalInfo(
                servings: servings,
                preparationTime: preparationTime,
              ),
              const SizedBox(height: 16),
              divider,
              ListView.separated(
                separatorBuilder: (context, index) => divider,
                padding: const EdgeInsets.symmetric(
                  // horizontal: 8,
                  vertical: 4,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = ingredients[index];
                  // return Row(
                  //   textBaseline: TextBaseline.alphabetic,
                  //   crossAxisAlignment: CrossAxisAlignment.baseline,
                  //   children: [
                  //     Icon(
                  //       Icons.circle,
                  //       color: theme.brightness == Brightness.dark
                  //           ? Colors.white
                  //           : Colors.black,
                  //       size: 4,
                  //     ),
                  //     const SizedBox(width: 8),
                  //     Expanded(
                  //       child: Text('${ingredient.name} ${ingredient.quantity}'),
                  //     ),
                  //   ],
                  // );
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: ingredient.quantity,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(text: ' '),
                          TextSpan(text: ingredient.name),
                        ],
                      ),
                      style: theme.textTheme.bodyLarge,
                    ),
                  );
                },
              ),
              divider,
            ],
          )
        : const SizedBox.shrink();
  }
}
