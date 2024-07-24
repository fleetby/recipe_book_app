part of 'search_types_bloc.dart';

@freezed
class SearchTypesState with _$SearchTypesState {
  const factory SearchTypesState({
    ImageProvider<Object>? mostSaved,
    ImageProvider<Object>? mostCommented,
    ImageProvider<Object>? newest,
    ImageProvider<Object>? oldest,
  }) = _SearchTypesState;
}
