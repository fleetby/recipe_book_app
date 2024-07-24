import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/id_image_provider.dart';

class UserProfileAvatar extends CircleAvatar {
  UserProfileAvatar(
    String? imageId, {
    super.key,
    super.radius,
    super.minRadius,
    super.maxRadius,
  }) : super(
          backgroundImage: imageId != null ? IdImageProvider(imageId) : null,
        );
}
