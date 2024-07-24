import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/edit_recipe/edit_recipe_bloc.dart';

import 'package:recipe_book_app/presentation/widgets/edit_recipe_body.dart';

@RoutePage()
class EditRecipePage extends StatelessWidget {
  const EditRecipePage(this.recipeId, {super.key});

  final int recipeId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<EditRecipeBloc>()..add(EditRecipeLoad(recipeId)),
      child: const EditRecipeBody(),
    );
  }
}
