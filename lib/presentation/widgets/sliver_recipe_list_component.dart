import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_recipe_list.dart';

/// A fully-bloc-aware version of [SliverRecipeList]
///
/// Implements common use cases for [SliverRecipeList]
/// using [RecipeListBloc]
class SliverRecipeListComponent extends StatelessWidget {
  const SliverRecipeListComponent({
    this.emptyPlaceholder,
    this.onRecipeSelected,
    super.key,
  });

  final SliverEmptyListPlaceholder? emptyPlaceholder;

  /// Overrides the default behavior of navigating to [RecipeRoute]
  final RecipeViewModelCallback? onRecipeSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeListBloc, RecipeListState>(
      builder: (context, state) {
        return SliverRecipeList(
          error: state.error,
          retryOnError: () =>
              context.read<RecipeListBloc>().add(const RecipeListReload()),
          state.recipes,
          loading: state.loading,
          onRecipeSelected: onRecipeSelected ??
              (recipe) => RecipeRoute(id: recipe.id).push<void>(context),
          onLoadMore: state.reachedEnd
              ? null
              : () => context
                  .read<RecipeListBloc>()
                  .add(const RecipeListLoadMore()),
          emptyPlaceholder: emptyPlaceholder,
        );
      },
    );
  }
}
