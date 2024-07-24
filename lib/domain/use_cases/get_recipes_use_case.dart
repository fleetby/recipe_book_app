import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/constants/get_recipes_source.dart';
import 'package:recipe_book_app/domain/constants/recipe_order.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@injectable
class GetRecipesUseCase {
  const GetRecipesUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<List<RecipeModel>> call(GetRecipesUseCaseParams params) =>
      recipesRepository.getRecipes(
        pageNumber: params.pageNumber,
        pageSize: params.pageSize,
        order: params.order,
        authorId: params.authorId,
        source: params.source,
        exceptId: params.exceptId,
        query: params.query,
      );
}

class GetRecipesUseCaseParams {
  const GetRecipesUseCaseParams({
    required this.pageNumber,
    required this.pageSize,
    this.order = RecipeOrder.publishedAtDesc,
    this.source,
    this.authorId,
    this.exceptId,
    this.query,
  });

  final int pageNumber;
  final int pageSize;
  final RecipeOrder order;
  final String? authorId;
  final GetRecipesSource? source;
  final List<int>? exceptId;
  final String? query;
}
