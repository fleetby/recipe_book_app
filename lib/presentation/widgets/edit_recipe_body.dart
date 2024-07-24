import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/directions_editor/directions_editor_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/edit_recipe/edit_recipe_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';
import 'package:recipe_book_app/presentation/widgets/create_recipe_form.dart';

class EditRecipeBody extends StatelessWidget {
  const EditRecipeBody({
    super.key,
  });

  static final _smKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocListener<EditRecipeBloc, EditRecipeState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        switch (state.status) {
          case null:
            break;
          case EditRecipeStateStatusLoading():
            break;
          case EditRecipeStateStatusSuccess():
            _smKey.currentState!.showSnackBar(
              SnackBar(
                content: Text(tr.successfullySavedRecipe),
                showCloseIcon: true,
              ),
            );
          case EditRecipeStateStatusError():
            _smKey.currentState!.showSnackBar(
              SnackBar(
                content: Text(tr.failedToSaveRecipe),
                showCloseIcon: true,
              ),
            );
          case EditRecipeStateStatusDeleted():
            context.maybePop(true);
        }
      },
      child: ScaffoldMessenger(
        key: _smKey,
        child: Scaffold(
          appBar: AppBar(
            title: Text(tr.editRecipePageTitle),
            actions: [
              IconButton(
                onPressed: () async {
                  final confirm = await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(tr.deleteRecipeDialogTitle),
                      content: Text(tr.deleteRecipeDialogContent),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: Text(tr.cancelAction),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: Text(tr.deleteAction),
                        ),
                      ],
                    ),
                  );
                  if (context.mounted && (confirm ?? false)) {
                    context
                        .read<EditRecipeBloc>()
                        .add(const EditRecipeDelete());
                    unawaited(context.router.maybePop());
                  }
                },
                icon: const Icon(PhosphorIconsRegular.trash),
              ),
              const SizedBox(width: 8),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4),
              child: BlocSelector<EditRecipeBloc, EditRecipeState, bool>(
                selector: (state) =>
                    state.status is EditRecipeStateStatusLoading,
                builder: (context, loading) {
                  return loading
                      ? const LinearProgressIndicator()
                      : const SizedBox.shrink();
                },
              ),
            ),
          ),
          body: BlocBuilder<EditRecipeBloc, EditRecipeState>(
            builder: (context, state) {
              if (state.recipe == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return BlocProvider(
                create: (context) => get<DirectionsEditorBloc>()
                  ..add(DirectionsEditorLoad(state.recipe!.directions ?? [])),
                child: Builder(
                  builder: (context) => CreateRecipeForm(
                    enabled: state.status is! EditRecipeStateStatusLoading,
                    editData: CreateRecipeFormEditData(
                      cover: state.recipe!.coverId != null
                          ? ImageIdItemViewModel(state.recipe!.coverId!)
                          : null,
                      title: state.recipe!.title,
                      description: state.recipe!.description,
                      servings: state.recipe!.servings.toString(),
                      preparationTime: state.recipe!.preparationTime.toString(),
                      ingredients: state.recipe!.ingredients
                              ?.map(
                                (ingredient) =>
                                    (ingredient.name, ingredient.quantity),
                              )
                              .toList() ??
                          [],
                    ),
                    editMode: true,
                    onSubmit: (result) {
                      context.read<EditRecipeBloc>().add(
                            EditRecipeSubmit(
                              title: result.title,
                              description: result.description,
                              servings: result.servings,
                              preparationTime: result.preparationTime,
                              ingredients: result.ingredients,
                              directions: context
                                  .read<DirectionsEditorBloc>()
                                  .state
                                  .directions,
                              cover: result.cover,
                            ),
                          );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
