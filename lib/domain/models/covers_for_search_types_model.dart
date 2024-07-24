import 'package:freezed_annotation/freezed_annotation.dart';

part 'covers_for_search_types_model.freezed.dart';

@freezed
class CoversForSearchTypesModel with _$CoversForSearchTypesModel {
  const factory CoversForSearchTypesModel({
    String? mostSaved,
    String? mostCommented,
    String? newest,
    String? oldest,
  }) = _CoversForSearchTypesModel;
}
