import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'image_item_view_model.freezed.dart';

@freezed
sealed class ImageItemViewModel with _$ImageItemViewModel {
  const factory ImageItemViewModel.id(String imageId) = ImageIdItemViewModel;

  const factory ImageItemViewModel.xfile(XFile imageXfile) =
      ImageXfileItemViewModel;
}
