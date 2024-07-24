import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/create_recipe/create_recipe_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

import 'package:recipe_book_app/presentation/widgets/create_recipe_form.dart';

class CreateRecipeBody extends StatelessWidget {
  CreateRecipeBody({
    super.key,
  });

  final _createRecipeFormKey = GlobalKey<CreateRecipeFormState>();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocConsumer<CreateRecipeBloc, CreateRecipeState>(
      listener: (context, state) {
        switch (state) {
          case CreateRecipeSuccess(:final recipeId):
            _createRecipeFormKey.currentState?.clear();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(tr.successfullyCreatedRecipe),
                action: SnackBarAction(
                  label: tr.viewAction,
                  onPressed: () =>
                      RecipeRoute(id: recipeId).push<void>(context),
                ),
                showCloseIcon: true,
              ),
            );
          case CreateRecipeError():
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(tr.failedToCreateRecipe),
                showCloseIcon: true,
              ),
            );
          default:
        }
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(tr.createRecipePageTitle),
          bottom: PreferredSize(
            // 4 is the height of the progress indicator from source (https://api.flutter.dev/flutter/material/LinearProgressIndicator/minHeight.html)
            preferredSize: const Size.fromHeight(4),
            child: state is CreateRecipeLoading
                ? const LinearProgressIndicator()
                : const SizedBox.shrink(),
          ),
        ),
        body: CreateRecipeForm(
          key: _createRecipeFormKey,
          enabled: state is! CreateRecipeLoading,
          onSubmit: (result) {
            context.read<CreateRecipeBloc>().add(
                  CreateRecipeCreate(
                    title: result.title,
                    description: result.description,
                    servings: result.servings,
                    preparationTime: result.preparationTime,
                    cover: result.cover,
                    ingredients: result.ingredients,
                    directions: result.directions,
                  ),
                );
          },
        ),
      ),
    );
  }
}
