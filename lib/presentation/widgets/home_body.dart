import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/domain/constants/get_recipes_source.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/logo.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_recipe_list_component.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leading: const Logo(),
              titleSpacing: 0,
              title: Text(tr.appName),
              floating: true,
              pinned: true,
              bottom: TabBar(
                tabs: [
                  Tab(text: tr.recipesTab),
                  Tab(text: tr.followingTab),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              BlocProvider(
                create: (context) =>
                    get<RecipeListBloc>()..add(const RecipeListLoad()),
                child: Builder(
                  builder: (context) => RefreshIndicator(
                    onRefresh: () async {
                      context.read<RecipeListBloc>().add(
                            const RecipeListLoad(
                              params: RecipeListParams(
                                invalidateCache: true,
                              ),
                            ),
                          );
                    },
                    child: CustomScrollView(
                      key: const ValueKey(0),
                      slivers: [
                        SliverRecipeListComponent(
                          emptyPlaceholder: SliverEmptyListPlaceholder(
                            icon: PhosphorIconsRegular.cookingPot,
                            text: tr.noRecipesYetPlaceholder,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BlocProvider(
                create: (context) => get<RecipeListBloc>()
                  ..add(
                    const RecipeListLoad(
                      params: RecipeListParams(
                        source: GetRecipesSource.following,
                      ),
                    ),
                  ),
                child: Builder(
                  builder: (context) => RefreshIndicator(
                    onRefresh: () async {
                      context.read<RecipeListBloc>().add(
                            const RecipeListLoad(
                              params: RecipeListParams(
                                source: GetRecipesSource.following,
                                invalidateCache: true,
                              ),
                            ),
                          );
                    },
                    child: CustomScrollView(
                      key: const ValueKey(1),
                      slivers: [
                        SliverRecipeListComponent(
                          emptyPlaceholder: SliverEmptyListPlaceholder(
                            icon: PhosphorIconsRegular.bookmarks,
                            text: tr.noFollowingYetPlaceholder,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
