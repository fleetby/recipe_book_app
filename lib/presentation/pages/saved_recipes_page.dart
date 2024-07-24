import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/domain/constants/get_recipes_source.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';

import 'package:recipe_book_app/presentation/widgets/saved_recipes_body.dart';

@RoutePage()
class SavedRecipesPage extends StatelessWidget {
  const SavedRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<RecipeListBloc>()
        ..add(
          const RecipeListLoad(
            params: RecipeListParams(source: GetRecipesSource.saved),
          ),
        ),
      child: const SavedRecipesBody(),
    );
  }
}
