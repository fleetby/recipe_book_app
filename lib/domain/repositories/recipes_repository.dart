import 'package:recipe_book_app/domain/constants/get_recipes_source.dart';
import 'package:recipe_book_app/domain/constants/recipe_order.dart';
import 'package:recipe_book_app/domain/models/covers_for_search_types_model.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';

abstract interface class RecipesRepository {
  Future<List<RecipeModel>> getRecipes({
    required int pageNumber,
    required int pageSize,
    RecipeOrder order,
    String? query,
    GetRecipesSource? source,
    String? authorId,
    List<int>? exceptId,
  });

  Future<RecipeModel?> getRecipeById(int id);

  Future<RecipeModel> createRecipe({
    required String title,
    required String description,
    required String servings,
    required String preparationTime,
    required String? coverId,
    required List<RecipeIngredientModel> ingredients,
    required List<RecipeDirectionModel> directions,
  });

  Future<RecipeModel> updateRecipe({
    required int id,
    bool deleteCover = false,
    String? title,
    String? description,
    String? servings,
    String? preparationTime,
    String? coverId,
    List<RecipeIngredientModel>? ingredients,
    List<RecipeDirectionModel>? directions,
  });

  Future<void> deleteRecipeById(int id);

  Future<bool> isSavedByAuthenticatedUser(int id);

  Future<void> invalidateRecipesCache();

  Future<void> saveRecipe(int id);

  Future<void> unsaveRecipe(int id);

  Future<CoversForSearchTypesModel> getCoversForSearchTypes();

  Stream<int> get recipeChanged;
  void notifyRecipeChanged(int id);

  Stream<int> get recipeDeleted;
  void notifyRecipeDeleted(int id);
}
