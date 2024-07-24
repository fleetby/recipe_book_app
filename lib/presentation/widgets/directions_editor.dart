import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/blocs/directions_editor/directions_editor_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/directions_editor_item.dart';

class DirectionsEditor extends StatelessWidget {
  const DirectionsEditor({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return BlocBuilder<DirectionsEditorBloc, DirectionsEditorState>(
      builder: (context, state) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(tr.directionsLabel, style: theme.textTheme.titleMedium),
              const SizedBox(height: 8),
              ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.directions.length,
                itemBuilder: (context, directionIndex) {
                  return DirectionsEditorItem(
                    state.directions[directionIndex],
                    index: directionIndex,
                    onAddImage: (xfile) {
                      context.read<DirectionsEditorBloc>().add(
                            DirectionsEditorEvent.addImage(
                              direction: directionIndex,
                              image: xfile,
                            ),
                          );
                    },
                    onDeleteImage: (imageIndex) {
                      context.read<DirectionsEditorBloc>().add(
                            DirectionsEditorEvent.deleteImage(
                              direction: directionIndex,
                              image: imageIndex,
                            ),
                          );
                    },
                    onEditText: (text) {
                      context.read<DirectionsEditorBloc>().add(
                            DirectionsEditorEvent.editText(
                              direction: directionIndex,
                              newText: text,
                            ),
                          );
                    },
                    onDeletePressed: () {
                      context.read<DirectionsEditorBloc>().add(
                            DirectionsEditorEvent.delete(directionIndex),
                          );
                    },
                  );
                },
              ),
              const SizedBox(height: 8),
              TextButton.icon(
                onPressed: () {
                  context
                      .read<DirectionsEditorBloc>()
                      .add(const DirectionsEditorEvent.add());
                },
                icon: const Icon(PhosphorIconsRegular.plus),
                label: Text(tr.addDirectionAction),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
