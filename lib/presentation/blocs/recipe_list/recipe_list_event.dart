part of 'recipe_list_bloc.dart';

@freezed
sealed class RecipeListEvent with _$RecipeListEvent {
  const factory RecipeListEvent.load({
    @Default(RecipeListParams()) RecipeListParams params,
  }) = RecipeListLoad;
  const factory RecipeListEvent.reload() = RecipeListReload;
  const factory RecipeListEvent.loadMore() = RecipeListLoadMore;
  const factory RecipeListEvent.deleted({required int id}) = RecipeListDeleted;
  const factory RecipeListEvent.changed({required int id}) = RecipeListChanged;
}
