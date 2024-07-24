import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/id_image_provider.dart';
import 'package:recipe_book_app/presentation/view_models/directions_editor_item_view_model.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';
import 'package:recipe_book_app/presentation/widgets/step_circle.dart';

class DirectionsEditorItem extends StatefulWidget {
  const DirectionsEditorItem(
    this.viewModel, {
    required this.index,
    required this.onDeletePressed,
    required this.onAddImage,
    required this.onDeleteImage,
    required this.onEditText,
    super.key,
  });

  final int index;
  final DirectionsEditorItemViewModel viewModel;
  final VoidCallback onDeletePressed;
  final void Function(XFile xfile) onAddImage;
  final void Function(int index) onDeleteImage;
  final void Function(String text) onEditText;

  @override
  State<DirectionsEditorItem> createState() => _DirectionsEditorItemState();
}

class _DirectionsEditorItemState extends State<DirectionsEditorItem> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _updateControllerFromVm();
  }

  @override
  void didUpdateWidget(covariant DirectionsEditorItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateControllerFromVm();
  }

  void _updateControllerFromVm() {
    if (_controller.text != widget.viewModel.direction) {
      _controller.text = widget.viewModel.direction;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepCircle(widget.index + 1),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _controller,
                onChanged: (value) {
                  widget.onEditText(value);
                },
                maxLines: null,
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: [
                  _Attachment(
                    onTap: () async {
                      final xfile = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                        requestFullMetadata: false,
                      );

                      if (xfile == null) {
                        return;
                      }

                      widget.onAddImage(xfile);
                    },
                    child: const Icon(PhosphorIconsRegular.cameraPlus),
                  ),
                  for (final (imageIndex, vm)
                      in widget.viewModel.images.indexed)
                    _Attachment(
                      onTap: () {
                        widget.onDeleteImage(imageIndex);
                      },
                      child: Image(
                        image: switch (vm) {
                          ImageIdItemViewModel(:final imageId) =>
                            IdImageProvider(imageId),
                          ImageXfileItemViewModel(:final imageXfile) =>
                            FileImage(File(imageXfile.path)),
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 2),
        IconButton(
          onPressed: widget.onDeletePressed,
          icon: const Icon(PhosphorIconsRegular.trash),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _Attachment extends StatelessWidget {
  const _Attachment({
    required this.onTap,
    required this.child,
  });

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      color: theme.colorScheme.primaryContainer,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(width: 56, height: 48, child: child),
      ),
    );
  }
}
