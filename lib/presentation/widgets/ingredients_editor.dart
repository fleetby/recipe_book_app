import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

class IngredientsEditor extends StatelessWidget {
  const IngredientsEditor(
    this.ingredients, {
    required this.onAddIngredient,
    required this.onRemoveAt,
    super.key,
  });

  final List<(String, String)> ingredients;
  final void Function(String name, String quantityHint) onAddIngredient;
  final void Function(int index) onRemoveAt;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(tr.ingredientsLabel, style: theme.textTheme.titleMedium),
            ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 8),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(),
              itemCount: ingredients.length,
              itemBuilder: (context, index) {
                final (name, quantityHint) = ingredients[index];
                return Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {},
                    child: Row(
                      children: [
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: name,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                const WidgetSpan(child: SizedBox(width: 8)),
                                TextSpan(
                                  text: quantityHint,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          onPressed: () => onRemoveAt(index),
                          icon: const Icon(PhosphorIconsRegular.trash),
                        ),
                      ],
                    ),
                  ),
                );
                // return ListTile(
                //   contentPadding: EdgeInsets.zero,
                //   title: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Text(name, style: theme.textTheme.bodyLarge),
                //       const SizedBox(width: 8),
                //       Text(quantityHint, style: theme.textTheme.bodyMedium),
                //     ],
                //   ),
                //   trailing: IconButton(
                //     onPressed: () => onRemoveAt(index),
                //     icon: const Icon(PhosphorIconsRegular.trash),
                //   ),
                // );
              },
            ),
            TextButton.icon(
              onPressed: () async {
                final result = await _showAddIngredientDialog(context);
                if (result == null) {
                  return;
                }
                final (name, quantity) = result;
                onAddIngredient(name, quantity);
              },
              icon: const Icon(PhosphorIconsRegular.plus),
              label: Text(tr.addIngredientAction),
            ),
          ],
        ),
      ),
    );
  }
}

Future<(String, String)?> _showAddIngredientDialog(BuildContext context) async {
  return showDialog<(String, String)?>(
    context: context,
    builder: (context) => _AddIngredientDialog(),
  );
}

class _AddIngredientDialog extends StatefulWidget {
  _AddIngredientDialog();

  final _formKey = GlobalKey<FormState>();

  @override
  State<_AddIngredientDialog> createState() => _AddIngredientDialogState();
}

class _AddIngredientDialogState extends State<_AddIngredientDialog> {
  final _nameController = TextEditingController();
  final _quantityHintController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Form(
      key: widget._formKey,
      child: AlertDialog(
        scrollable: true,
        title: Text(tr.addIngredientAction),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              validator: (value) {
                if (value?.isBlank ?? true) {
                  return tr.cannotBeBlankError;
                }

                return null;
              },
              controller: _nameController,
              decoration: InputDecoration(
                hintText: tr.editIngredientNameHint,
              ),
              maxLength: 50,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _quantityHintController,
              decoration: InputDecoration(
                hintText: tr.editIngredientQuantityOrHint,
              ),
              maxLength: 20,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(tr.cancelAction),
          ),
          TextButton(
            onPressed: () {
              if (!widget._formKey.currentState!.validate()) {
                return;
              }
              Navigator.of(context)
                  .pop((_nameController.text, _quantityHintController.text));
            },
            child: Text(tr.addAction),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _quantityHintController.dispose();
    super.dispose();
  }
}
