part of 'directions_editor_bloc.dart';

@freezed
sealed class DirectionsEditorEvent with _$DirectionsEditorEvent {
  const factory DirectionsEditorEvent.add() = _DirectionsEditorAdd;
  const factory DirectionsEditorEvent.editText({
    required int direction,
    required String newText,
  }) = _DirectionsEditorEditText;
  const factory DirectionsEditorEvent.deleteImage({
    required int direction,
    required int image,
  }) = _DirectionsEditorDeleteImage;
  const factory DirectionsEditorEvent.addImage({
    required int direction,
    required XFile image,
  }) = _DirectionsEditorAddImage;
  const factory DirectionsEditorEvent.delete(int index) =
      _DirectionsEditorDelete;

  const factory DirectionsEditorEvent.load(
    List<RecipeDirectionModel> directions,
  ) = DirectionsEditorLoad;

  const factory DirectionsEditorEvent.clear() = DirectionsEditorClear;
}
