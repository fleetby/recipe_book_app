import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/domain/constants/get_recipes_source.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_recipe_list_component.dart';

class SavedRecipesBody extends StatelessWidget {
  const SavedRecipesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.savedRecipesPageTitle),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<RecipeListBloc>().add(
                const RecipeListLoad(
                  params: RecipeListParams(
                    source: GetRecipesSource.saved,
                    invalidateCache: true,
                  ),
                ),
              );
        },
        child: CustomScrollView(
          slivers: [
            SliverRecipeListComponent(
              emptyPlaceholder: SliverEmptyListPlaceholder(
                icon: PhosphorIconsRegular.heart,
                text: tr.noSavedRecipesPlaceholder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
