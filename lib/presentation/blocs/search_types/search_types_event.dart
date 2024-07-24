part of 'search_types_bloc.dart';

@freezed
sealed class SearchTypesEvent with _$SearchTypesEvent {
  const factory SearchTypesEvent.load() = SearchTypesLoad;
}
