import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book_app/domain/constants/recipe_order.dart';

part 'covers_for_search_types_dto.freezed.dart';
part 'covers_for_search_types_dto.g.dart';

/// Contains cover ids for each search type (see [RecipeOrder])
@freezed
class CoversForSearchTypesDto with _$CoversForSearchTypesDto {
  const factory CoversForSearchTypesDto({
    @JsonKey(name: 'most_saved') required String? mostSaved,
    @JsonKey(name: 'most_commented') required String? mostCommented,
    required String? newest,
    required String? oldest,
  }) = _CoversForSearchTypesDto;

  factory CoversForSearchTypesDto.fromJson(Map<String, dynamic> json) =>
      _$CoversForSearchTypesDtoFromJson(json);
}
