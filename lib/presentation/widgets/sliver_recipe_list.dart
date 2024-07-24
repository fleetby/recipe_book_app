import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_view_model.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';

import 'package:recipe_book_app/presentation/widgets/recipe_item.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_error_placeholder.dart';

typedef RecipeViewModelCallback = void Function(RecipeViewModel);

class SliverRecipeList extends StatelessWidget {
  const SliverRecipeList(
    this.recipes, {
    this.loading = false,
    this.onRecipeSelected,
    this.onLoadMore,
    this.emptyPlaceholder,
    this.error,
    this.retryOnError,
    super.key,
  });

  final List<RecipeViewModel> recipes;
  final RecipeViewModelCallback? onRecipeSelected;
  final VoidCallback? onLoadMore;
  final bool loading;
  final SliverEmptyListPlaceholder? emptyPlaceholder;
  final Object? error;
  final VoidCallback? retryOnError;

  @override
  Widget build(BuildContext context) {
    if (recipes.isEmpty && loading) {
      return const SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    /// TODO: Separate error for [RecipeListLoadMore] is needed because the error screen should only fill the whole widget
    /// if the previous and the initial page were without errors and this new page has an error.
    /// This way, the user can still see previous pages if they were loaded successfully.
    if (error != null) {
      return SliverErrorPlaceholder(retryOnError: retryOnError);
    }

    if (recipes.isEmpty && emptyPlaceholder != null) {
      return emptyPlaceholder!;
    }

    return SliverList.builder(
      itemCount: recipes.length + (onLoadMore != null ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= recipes.length && onLoadMore != null) {
          onLoadMore?.call();
          return Container(
            height: 72,
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          );
        }
        final recipe = recipes[index];
        return RecipeItem(
          recipe,
          onTap:
              onRecipeSelected != null ? () => onRecipeSelected!(recipe) : null,
        );
      },
    );
  }
}
