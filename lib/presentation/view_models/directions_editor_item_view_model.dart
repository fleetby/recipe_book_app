import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';

part 'directions_editor_item_view_model.freezed.dart';

@freezed
class DirectionsEditorItemViewModel with _$DirectionsEditorItemViewModel {
  const factory DirectionsEditorItemViewModel({
    @Default('') String direction,
    @Default([]) List<ImageItemViewModel> images,
  }) = _DirectionsEditorItemViewModel;
}
