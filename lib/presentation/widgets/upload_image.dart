import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/extensions/image_item_view_model_extensions.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({
    this.initialImage,
    super.key,
  });

  final ImageItemViewModel? initialImage;

  @override
  State<UploadImage> createState() => UploadImageState();
}

class UploadImageState extends State<UploadImage>
    with AutomaticKeepAliveClientMixin {
  ImageItemViewModel? image;

  void clear() {
    setState(() {
      image = null;
    });
  }

  @override
  void initState() {
    super.initState();
    image = widget.initialImage;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8),
      color: theme.colorScheme.primaryContainer,
      child: InkWell(
        onTap: image == null
            ? () async {
                final xfile = await ImagePicker().pickImage(
                  source: ImageSource.gallery,
                  requestFullMetadata: false,
                );

                if (xfile == null) {
                  return;
                }

                setState(() {
                  image = ImageItemViewModel.xfile(xfile);
                });
              }
            : null,
        child: Container(
          constraints: BoxConstraints.loose(const Size.fromHeight(200)),
          padding: image == null ? const EdgeInsets.all(16) : null,
          child: image == null
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      PhosphorIconsRegular.cameraPlus,
                      size: 64,
                    ),
                    Text(
                      tr.uploadAnImageAction,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    Positioned.fill(
                      child: Image(
                        image: image!.imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: IconButton.filled(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.grey[850],
                          ),
                          foregroundColor: const WidgetStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            image = null;
                          });
                        },
                        icon: const Icon(PhosphorIconsRegular.trash),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
