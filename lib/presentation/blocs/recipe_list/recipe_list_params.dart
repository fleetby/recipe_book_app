part of 'recipe_list_bloc.dart';

@freezed
class RecipeListParams with _$RecipeListParams {
  const factory RecipeListParams({
    String? query,
    @Default(RecipeOrder.publishedAtDesc) RecipeOrder order,
    @Default(false) bool onlyMyRecipes,
    String? authorId,
    @Default(false) bool invalidateCache,
    GetRecipesSource? source,
    List<int>? exceptId,
  }) = _RecipeListParams;
}
