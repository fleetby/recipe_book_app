import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

class EditProfileFormResult {
  const EditProfileFormResult({
    required this.name,
    required this.avatarToUpload,
    required this.deleteAvatar,
  });

  final String name;
  final File? avatarToUpload;
  final bool deleteAvatar;
}

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({
    required this.onSubmit,
    this.initialName = '',
    this.oldImage,
    super.key,
  });

  final String initialName;
  final ImageProvider<Object>? oldImage;
  final void Function(EditProfileFormResult result) onSubmit;

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  File? _newImage;
  bool _deleteAvatar = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
  }

  @override
  void didUpdateWidget(covariant EditProfileForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialName != widget.initialName) {
      _nameController.text = widget.initialName;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    final isThereImage =
        _newImage != null || (!_deleteAvatar && widget.oldImage != null);
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: SizedBox(
              width: 96,
              height: 96,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: isThereImage
                          ? (_newImage != null
                              ? FileImage(_newImage!)
                              : widget.oldImage)
                          : null,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Material(
                      type: MaterialType.circle,
                      clipBehavior: Clip.antiAlias,
                      color:
                          // isThereImage
                          // ? theme.colorScheme.primaryContainer
                          // :
                          theme.colorScheme.primary,
                      child: InkWell(
                        onTap: () async {
                          if (isThereImage) {
                            setState(() {
                              _newImage = null;
                              _deleteAvatar = true;
                            });
                          } else {
                            final xfile = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);

                            if (xfile == null) {
                              return;
                            }

                            setState(() {
                              _newImage = File(xfile.path);
                              _deleteAvatar = false;
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            isThereImage
                                ? PhosphorIconsRegular.x
                                : PhosphorIconsRegular.cameraPlus,
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: tr.editNameHint,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onSubmit(
                  EditProfileFormResult(
                    name: _nameController.text,
                    avatarToUpload: _newImage,
                    deleteAvatar: _deleteAvatar,
                  ),
                );
              }
            },
            child: Text(tr.saveAction),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
