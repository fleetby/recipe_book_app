import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_view_model.dart';

import 'package:recipe_book_app/presentation/widgets/comment_count_recipe_badge.dart';
import 'package:recipe_book_app/presentation/widgets/saved_count_recipe_badge.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem(
    this.recipe, {
    this.onTap,
    super.key,
  });

  final RecipeViewModel recipe;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 105,
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: recipe.coverUrl != null
                        ? DecorationImage(
                            image: CachedNetworkImageProvider(recipe.coverUrl!),
                            fit: BoxFit.cover,
                          )
                        : null,
                    color: theme.colorScheme.surfaceTint,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (recipe.categoryName != null)
                        Text(
                          recipe.categoryName!,
                          style: theme.textTheme.bodyMedium,
                        ),
                      Text(
                        recipe.title,
                        style: theme.textTheme.titleMedium,
                        // maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        recipe.description,
                        style: theme.textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SavedCountRecipeBadge(recipe.savedCount.toString()),
                          const SizedBox(width: 8),
                          CommentCountRecipeBadge(
                            recipe.commentCount.toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
