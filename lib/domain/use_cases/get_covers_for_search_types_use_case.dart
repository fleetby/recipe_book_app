import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/covers_for_search_types_model.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@singleton
class GetCoversForSearchTypesUseCase {
  const GetCoversForSearchTypesUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<CoversForSearchTypesModel> call() =>
      recipesRepository.getCoversForSearchTypes();
}
