import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/presentation/view_models/directions_editor_item_view_model.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';

part 'directions_editor_bloc.freezed.dart';

part 'directions_editor_event.dart';
part 'directions_editor_state.dart';

@injectable
class DirectionsEditorBloc
    extends Bloc<DirectionsEditorEvent, DirectionsEditorState> {
  DirectionsEditorBloc() : super(const DirectionsEditorState()) {
    on<_DirectionsEditorAdd>(_add);
    on<_DirectionsEditorEditText>(_editText);
    on<_DirectionsEditorDeleteImage>(_deleteImage);
    on<_DirectionsEditorAddImage>(_addImage);
    on<_DirectionsEditorDelete>(_delete);
    on<DirectionsEditorLoad>(_load);
    on<DirectionsEditorClear>(_clear);
  }

  Future<void> _add(
    _DirectionsEditorAdd event,
    Emitter<DirectionsEditorState> emit,
  ) async {
    emit(
      state.copyWith(
        directions: [
          ...state.directions,
          const DirectionsEditorItemViewModel(),
        ],
      ),
    );
  }

  Future<void> _editText(
    _DirectionsEditorEditText event,
    Emitter<DirectionsEditorState> emit,
  ) async {
    final directions =
        List<DirectionsEditorItemViewModel>.from(state.directions);
    directions[event.direction] =
        directions[event.direction].copyWith(direction: event.newText);
    emit(state.copyWith(directions: directions));
  }

  Future<void> _deleteImage(
    _DirectionsEditorDeleteImage event,
    Emitter<DirectionsEditorState> emit,
  ) async {
    final directions =
        List<DirectionsEditorItemViewModel>.from(state.directions);
    final images =
        List<ImageItemViewModel>.from(directions[event.direction].images)
          ..removeAt(event.image);

    directions[event.direction] = directions[event.direction].copyWith(
      images: images,
    );
    emit(state.copyWith(directions: directions));
  }

  Future<void> _addImage(
    _DirectionsEditorAddImage event,
    Emitter<DirectionsEditorState> emit,
  ) async {
    final directions =
        List<DirectionsEditorItemViewModel>.from(state.directions);
    final images =
        List<ImageItemViewModel>.from(directions[event.direction].images)
          ..add(ImageItemViewModel.xfile(event.image));

    directions[event.direction] = directions[event.direction].copyWith(
      images: images,
    );
    emit(state.copyWith(directions: directions));
  }

  Future<void> _delete(
    _DirectionsEditorDelete event,
    Emitter<DirectionsEditorState> emit,
  ) async {
    final directions =
        List<DirectionsEditorItemViewModel>.from(state.directions)
          ..removeAt(event.index);
    emit(state.copyWith(directions: directions));
  }

  Future<void> _load(
    DirectionsEditorLoad event,
    Emitter<DirectionsEditorState> emit,
  ) async {
    final directions = [
      for (final direction in event.directions)
        DirectionsEditorItemViewModel(
          direction: direction.direction,
          images: direction.images.map(ImageItemViewModel.id).toList(),
        ),
    ];

    emit(state.copyWith(directions: directions));
  }

  Future<void> _clear(
    DirectionsEditorClear event,
    Emitter<DirectionsEditorState> emit,
  ) async {
    emit(state.copyWith(directions: []));
  }
}
