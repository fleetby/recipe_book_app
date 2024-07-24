import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/id_image_provider.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';

extension ImageItemViewModelExtensions on ImageItemViewModel {
  ImageProvider<Object> get imageProvider => switch (this) {
        ImageIdItemViewModel(:final imageId) => IdImageProvider(imageId),
        ImageXfileItemViewModel(:final imageXfile) =>
          FileImage(File(imageXfile.path)),
      };
}
