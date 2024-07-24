part of 'directions_editor_bloc.dart';

@freezed
class DirectionsEditorState with _$DirectionsEditorState {
  const factory DirectionsEditorState({
    @Default([]) List<DirectionsEditorItemViewModel> directions,
  }) = _DirectionsEditorState;
}
