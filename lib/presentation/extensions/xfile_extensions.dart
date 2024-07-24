import 'dart:io';

import 'package:image_picker/image_picker.dart';

extension XFileExtensions on XFile {
  File get file => File(path);
}
