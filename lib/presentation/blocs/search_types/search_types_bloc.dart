import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/use_cases/get_covers_for_search_types_use_case.dart';
import 'package:recipe_book_app/presentation/id_image_provider.dart';

part 'search_types_bloc.freezed.dart';

part 'search_types_event.dart';
part 'search_types_state.dart';

@injectable
class SearchTypesBloc extends Bloc<SearchTypesEvent, SearchTypesState> {
  SearchTypesBloc(this.getCoversForSearchTypesUseCase)
      : super(const SearchTypesState()) {
    on<SearchTypesLoad>(_load);
  }

  final GetCoversForSearchTypesUseCase getCoversForSearchTypesUseCase;

  Future<void> _load(
    SearchTypesLoad event,
    Emitter<SearchTypesState> emit,
  ) async {
    try {
      final result = await getCoversForSearchTypesUseCase();
      emit(
        SearchTypesState(
          mostSaved: _idImageProviderOf(result.mostSaved),
          mostCommented: _idImageProviderOf(result.mostCommented),
          newest: _idImageProviderOf(result.newest),
          oldest: _idImageProviderOf(result.oldest),
        ),
      );
    } catch (e, st) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: st,
      );
    }
  }

  IdImageProvider? _idImageProviderOf(String? coverId) =>
      coverId != null ? IdImageProvider(coverId) : null;
}
