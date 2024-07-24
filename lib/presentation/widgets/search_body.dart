import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/search_types/search_types_bloc.dart';
import 'package:recipe_book_app/presentation/constants/recipe_search_type.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/utils/get_search_type_translated_name.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/my_search_bar.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_recipe_list_component.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({
    super.key,
  });

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final _searchRecipeListBloc = get<RecipeListBloc>();
  final _trendingRecipeListBloc = get<RecipeListBloc>();
  final _searchTypesBloc = get<SearchTypesBloc>();
  final _searchController = TextEditingController();
  bool doSearch = false;
  var _selectedSearchType = RecipeSearchType.mostLiked;

  @override
  void initState() {
    super.initState();
    _loadTrending();
    _searchTypesBloc.add(const SearchTypesLoad());
    _searchController.addListener(() {
      setState(() => doSearch = _searchController.text.isNotEmpty);
      if (doSearch) {
        _loadSearch();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            if (doSearch) {
              _loadSearch(invalidateCache: true);
            } else {
              _loadTrending(invalidateCache: true);
            }
          },
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate:
                    _SearchAppBarSliverDelegate(controller: _searchController),
                floating: true,
                pinned: true,
              ),
              if (!doSearch) ...[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 4,
                      bottom: 8,
                    ),
                    child: Text(
                      tr.findRecipesLabel,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: BlocProvider.value(
                    value: _searchTypesBloc,
                    child: BlocBuilder<SearchTypesBloc, SearchTypesState>(
                      builder: (context, state) => SliverGrid.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                          childAspectRatio: 2.2,
                        ),
                        itemCount: RecipeSearchType.values.length,
                        itemBuilder: (context, index) {
                          final searchType = RecipeSearchType.values[index];
                          return _FindRecipesItem(
                            name: getSearchTypeTranslatedName(
                              searchType,
                              context,
                            ),
                            imageProvider: switch (searchType) {
                              RecipeSearchType.mostLiked => state.mostSaved,
                              RecipeSearchType.mostCommented =>
                                state.mostCommented,
                              RecipeSearchType.newest => state.newest,
                              RecipeSearchType.oldest => state.oldest,
                            },
                            onSelect: () => _setSearchType(searchType),
                            selected: _selectedSearchType.index == index,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 12,
                    ),
                    child: Text(
                      getSearchTypeTranslatedName(
                        _selectedSearchType,
                        context,
                      ),
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                BlocProvider.value(
                  value: _trendingRecipeListBloc,
                  child: const SliverRecipeListComponent(),
                ),
              ] else ...[
                BlocProvider.value(
                  value: _searchRecipeListBloc,
                  child: SliverRecipeListComponent(
                    emptyPlaceholder: SliverEmptyListPlaceholder(
                      icon: PhosphorIconsRegular.magnifyingGlass,
                      text: tr.noRecipesFoundPlaceholder,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _setSearchType(RecipeSearchType searchType) {
    setState(() {
      _selectedSearchType = searchType;
      _loadTrending();
    });
  }

  void _loadTrending({bool invalidateCache = false}) {
    _trendingRecipeListBloc.add(
      RecipeListLoad(
        params: RecipeListParams(
          order: _selectedSearchType.recipeOrder,
          invalidateCache: invalidateCache,
        ),
      ),
    );
  }

  void _loadSearch({bool invalidateCache = false}) {
    _searchRecipeListBloc.add(
      RecipeListLoad(
        params: RecipeListParams(
          query: _searchController.text,
          invalidateCache: invalidateCache,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchRecipeListBloc.close();
    _searchTypesBloc.close();
    _trendingRecipeListBloc.close();
    super.dispose();
  }
}

class _FindRecipesItem extends StatelessWidget {
  const _FindRecipesItem({
    required this.name,
    required this.onSelect,
    this.imageProvider,
    this.selected = false,
  });

  final String name;
  final bool selected;
  final VoidCallback onSelect;
  final ImageProvider<Object>? imageProvider;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: selected
            ? BorderSide(
                color: theme.colorScheme.primary,
                width: theme.brightness == Brightness.dark ? 1 : 3,
              )
            : BorderSide.none,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (imageProvider != null)
            Image(
              image: imageProvider!,
              fit: BoxFit.cover,
            ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.black.withOpacity(.7),
            alignment: Alignment.bottomLeft,
            child: Text(
              name,
              style: theme.textTheme.labelLarge!.copyWith(color: Colors.white),
            ),
          ),
          Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: onSelect,
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchAppBarSliverDelegate extends SliverPersistentHeaderDelegate {
  const _SearchAppBarSliverDelegate({this.controller});

  final TextEditingController? controller;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return MySearchBar(controller: controller);
  }

  @override
  double get maxExtent => 72;

  @override
  double get minExtent => 72;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
