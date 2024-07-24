part of 'recipe_list_bloc.dart';

@freezed
class RecipeListState with _$RecipeListState {
  const factory RecipeListState({
    @Default(0) int pageNumber,
    @Default(10) int pageSize,
    @Default(RecipeListParams()) RecipeListParams params,
    @Default([]) List<RecipeViewModel> recipes,
    @Default(false) bool reachedEnd,
    @Default(true) bool loading,
    (Object, StackTrace)? error,
  }) = _RecipeListInitial;
}
