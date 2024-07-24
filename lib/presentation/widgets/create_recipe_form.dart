import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/directions_editor/directions_editor_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/view_models/directions_editor_item_view_model.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';
import 'package:recipe_book_app/presentation/widgets/directions_editor.dart';

import 'package:recipe_book_app/presentation/widgets/ingredients_editor.dart';
import 'package:recipe_book_app/presentation/widgets/upload_image.dart';

class CreateRecipeSubmitResult {
  CreateRecipeSubmitResult({
    required this.title,
    required this.description,
    required this.servings,
    required this.preparationTime,
    required this.cover,
    required this.ingredients,
    required this.directions,
  });

  final String title;
  final String description;
  final String servings;
  final String preparationTime;
  final ImageItemViewModel? cover;
  final List<(String, String)> ingredients;
  final List<DirectionsEditorItemViewModel> directions;
}

class CreateRecipeFormEditData {
  CreateRecipeFormEditData({
    required this.title,
    required this.description,
    required this.servings,
    required this.preparationTime,
    required this.ingredients,
    required this.cover,
  });

  final String? title;
  final String? description;
  final String? servings;
  final String? preparationTime;
  final List<(String, String)> ingredients;
  final ImageItemViewModel? cover;
}

class CreateRecipeForm extends StatefulWidget {
  const CreateRecipeForm({
    required this.onSubmit,
    this.editMode = false,
    this.enabled = true,
    this.editData,
    super.key,
  });

  final void Function(CreateRecipeSubmitResult result) onSubmit;
  final bool editMode;
  final CreateRecipeFormEditData? editData;
  final bool enabled;

  @override
  State<CreateRecipeForm> createState() => CreateRecipeFormState();
}

class CreateRecipeFormState extends State<CreateRecipeForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _uploadImage = GlobalKey<UploadImageState>();
  final _servingsController = TextEditingController();
  final _preparationTimeController = TextEditingController();

  final _titleFocus = FocusNode();
  final _descriptionFocus = FocusNode();

  final List<(String, String)> _ingredients = [];

  void clear() {
    setState(() {
      _titleController.clear();
      _descriptionController.clear();
      _servingsController.clear();
      _preparationTimeController.clear();
      _ingredients.clear();
      _uploadImage.currentState?.clear();

      // Bugged:
      // _formKey.currentState?.reset();

      context.read<DirectionsEditorBloc>().add(const DirectionsEditorClear());
    });
  }

  @override
  void initState() {
    super.initState();
    _updateEditData();
  }

  void _updateEditData() {
    final data = widget.editData;

    if (data == null) {
      return;
    }

    if (data.title != null && _titleController.text != data.title) {
      _titleController.text = data.title!;
    }

    if (data.description != null &&
        _descriptionController.text != data.description) {
      _descriptionController.text = data.description!;
    }

    if (data.servings != null && _servingsController.text != data.servings) {
      _servingsController.text = data.servings!;
    }

    if (data.preparationTime != null &&
        _preparationTimeController.text != data.preparationTime) {
      _preparationTimeController.text = data.preparationTime!;
    }

    if (_ingredients != data.ingredients) {
      _ingredients
        ..clear()
        ..addAll(data.ingredients);
    }
  }

  @override
  void didUpdateWidget(covariant CreateRecipeForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateEditData();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            UploadImage(
              key: _uploadImage,
              initialImage: widget.editData?.cover,
            ),
            const SizedBox(height: 24),
            TextFormField(
              focusNode: _titleFocus,
              validator: (value) {
                if (value?.isBlank ?? true) {
                  _titleFocus.requestFocus();
                  return tr.cannotBeBlankError;
                }

                return null;
              },
              enabled: widget.enabled,
              controller: _titleController,
              decoration: InputDecoration(
                hintText: tr.editTitleHint,
              ),
              maxLength: 100,
            ),
            const SizedBox(height: 8),
            TextFormField(
              focusNode: _descriptionFocus,
              validator: (value) {
                if (value?.isBlank ?? true) {
                  _descriptionFocus.requestFocus();
                  return tr.cannotBeBlankError;
                }

                return null;
              },
              enabled: widget.enabled,
              controller: _descriptionController,
              minLines: 3,
              maxLines: null,
              decoration: InputDecoration(
                hintText: tr.editDescriptionHint,
              ),
              maxLength: 1000,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    tr.editServingsHint,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: TextField(
                    enabled: widget.enabled,
                    controller: _servingsController,
                    decoration: InputDecoration(
                      hintText: tr.editServingsExample,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    tr.editPreparationTimeHint,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: TextField(
                    enabled: widget.enabled,
                    controller: _preparationTimeController,
                    decoration: InputDecoration(
                      hintText: tr.editPreparationTimeExample,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            IngredientsEditor(
              _ingredients,
              onAddIngredient: (name, quantityHint) {
                setState(() {
                  _ingredients.add((name, quantityHint));
                });
              },
              onRemoveAt: (index) {
                setState(() {
                  _ingredients.removeAt(index);
                });
              },
            ),
            const SizedBox(height: 8),
            const DirectionsEditor(),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {
                final formState = _formKey.currentState!;
                if (formState.validate()) {
                  widget.onSubmit(
                    CreateRecipeSubmitResult(
                      title: _titleController.text,
                      description: _descriptionController.text,
                      servings: _servingsController.text,
                      preparationTime: _preparationTimeController.text,
                      cover: _uploadImage.currentState?.image,
                      ingredients: _ingredients,
                      directions:
                          context.read<DirectionsEditorBloc>().state.directions,
                    ),
                  );
                }
              },
              child: Text(
                widget.editMode ? tr.saveAction : tr.createAction,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _servingsController.dispose();
    _preparationTimeController.dispose();
    super.dispose();
  }
}
