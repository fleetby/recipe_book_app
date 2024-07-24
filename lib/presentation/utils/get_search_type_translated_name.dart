import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/constants/recipe_search_type.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

String getSearchTypeTranslatedName(
  RecipeSearchType searchType,
  BuildContext context,
) {
  final tr = AppLocalizations.of(context);
  return switch (searchType) {
    RecipeSearchType.mostLiked => tr.mostLikedSearchTypeLabel,
    RecipeSearchType.mostCommented => tr.mostCommentedSearchTypeLabel,
    RecipeSearchType.newest => tr.newestSearchTypeLabel,
    RecipeSearchType.oldest => tr.oldestSearchTypeLabel,
  };
}
