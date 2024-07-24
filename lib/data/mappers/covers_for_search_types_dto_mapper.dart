import 'package:recipe_book_app/data/dtos/covers_for_search_types_dto.dart';
import 'package:recipe_book_app/domain/models/covers_for_search_types_model.dart';

extension CoversForSearchTypesDtoMapper on CoversForSearchTypesDto {
  CoversForSearchTypesModel get model => CoversForSearchTypesModel(
        mostSaved: mostSaved,
        mostCommented: mostCommented,
        newest: newest,
        oldest: oldest,
      );
}
