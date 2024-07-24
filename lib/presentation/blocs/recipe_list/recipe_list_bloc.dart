import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/constants/get_recipes_source.dart';
import 'package:recipe_book_app/domain/constants/recipe_order.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_category_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_file_url_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipe_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipe_changed_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipe_deleted_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipes_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_user_profile_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/invalidate_recipes_cache_use_case.dart';
import 'package:recipe_book_app/presentation/utils/debug.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_view_model.dart';

part 'recipe_list_bloc.freezed.dart';

part 'recipe_list_event.dart';
part 'recipe_list_state.dart';
part 'recipe_list_params.dart';

@injectable
class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  RecipeListBloc(
    this.getRecipesUseCase,
    this.getCategoryByIdUseCase,
    this.getUserProfileByIdUseCase,
    this.getAuthenticatedUserIdUseCase,
    this.invalidateRecipesCacheUseCase,
    this.getFileUrlUseCase,
    this.getRecipeDeletedStreamUseCase,
    this.getRecipeChangedStreamUseCase,
    this.getRecipeByIdUseCase,
  ) : super(const RecipeListState()) {
    _recipeChangedSubscription = getRecipeChangedStreamUseCase(
      const GetRecipeChangedStreamUseCaseParams(),
    ).listen((id) => add(RecipeListChanged(id: id)));
    _recipeDeletedSubscription = getRecipeDeletedStreamUseCase(
      const GetRecipeDeletedStreamUseCaseParams(),
    ).listen((id) => add(RecipeListDeleted(id: id)));
    on<RecipeListLoad>(_load);
    on<RecipeListReload>(_reload);
    on<RecipeListLoadMore>(_loadMore, transformer: droppable());
    on<RecipeListDeleted>(_deleted);
    on<RecipeListChanged>(_changed);
  }

  final GetRecipesUseCase getRecipesUseCase;
  final GetUserProfileByIdUseCase getUserProfileByIdUseCase;
  final GetCategoryByIdUseCase getCategoryByIdUseCase;
  final GetAuthenticatedUserIdUseCase getAuthenticatedUserIdUseCase;
  final InvalidateRecipesCacheUseCase invalidateRecipesCacheUseCase;
  final GetFileUrlUseCase getFileUrlUseCase;
  final GetRecipeDeletedStreamUseCase getRecipeDeletedStreamUseCase;
  final GetRecipeChangedStreamUseCase getRecipeChangedStreamUseCase;
  final GetRecipeByIdUseCase getRecipeByIdUseCase;

  late final StreamSubscription<int> _recipeChangedSubscription;
  late final StreamSubscription<int> _recipeDeletedSubscription;

  Future<void> _load(
    RecipeListLoad event,
    Emitter<RecipeListState> emit,
  ) async {
    try {
      emit(const RecipeListState());
      const firstPage = 0;
      final vms = await _loadPage(firstPage, state.pageSize, event.params);
      emit(
        RecipeListState(
          recipes: vms,
          params: event.params,
        ),
      );
    } catch (e, st) {
      emit(state.copyWith(error: (e, st)));
    }
    emit(state.copyWith(loading: false));
  }

  Future<void> _reload(
    RecipeListReload event,
    Emitter<RecipeListState> emit,
  ) async {
    try {
      await invalidateRecipesCacheUseCase();
    } catch (e, st) {
      debugPrintError(e, st);
    }
    add(const RecipeListLoad());
  }

  Future<void> _loadMore(
    RecipeListLoadMore event,
    Emitter<RecipeListState> emit,
  ) async {
    try {
      emit(state.copyWith(loading: true));
      final vms =
          await _loadPage(state.pageNumber + 1, state.pageSize, state.params);
      emit(
        state.copyWith(
          recipes: [...state.recipes, ...vms],
          pageNumber: state.pageNumber + 1,
          reachedEnd: vms.isEmpty,
        ),
      );
    } catch (e, st) {
      emit(state.copyWith(error: (e, st)));
    }
    emit(state.copyWith(loading: false));
  }

  Future<List<RecipeViewModel>> _loadPage(
    int pageNumber,
    int pageSize, [
    RecipeListParams params = const RecipeListParams(),
  ]) async {
    assert(
      !(params.onlyMyRecipes && params.authorId != null),
      'onlyMyRecipes and authorId cannot be used at the same time',
    );

    if (params.invalidateCache) {
      await invalidateRecipesCacheUseCase();
    }

    var authorId = params.authorId;
    if (params.onlyMyRecipes) {
      authorId = await getAuthenticatedUserIdUseCase();
    }

    final result = await getRecipesUseCase(
      GetRecipesUseCaseParams(
        pageNumber: pageNumber,
        pageSize: pageSize,
        order: params.order,
        authorId: authorId,
        source: params.source,
        exceptId: params.exceptId,
        query: params.query,
      ),
    );

    final vm = <RecipeViewModel>[];

    for (final recipe in result) {
      final category = recipe.categoryId != null
          ? (await getCategoryByIdUseCase(
              GetCategoryByIdUseCaseParams(id: recipe.categoryId!),
            ))!
          : null;

      final userProfile = await getUserProfileByIdUseCase(
        GetUserProfileByIdUseCaseParams(id: recipe.userId),
      );

      final recipeVm = RecipeViewModel.mapFrom(
        recipe: recipe,
        userProfile: userProfile!,
        category: category,
        coverUrl: recipe.coverId != null
            ? await getFileUrlUseCase(
                GetFileUrlUseCaseParams(recipe.coverId!),
              )
            : null,
      );

      vm.add(recipeVm);
    }

    return vm;
  }

  Future<void> _deleted(
    RecipeListDeleted event,
    Emitter<RecipeListState> emit,
  ) async {
    try {
      if (state.recipes.any((e) => e.id == event.id)) {
        emit(
          state.copyWith(
            recipes: [...state.recipes]..removeWhere((e) => e.id == event.id),
          ),
        );
      }
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    }
  }

  Future<void> _changed(
    RecipeListChanged event,
    Emitter<RecipeListState> emit,
  ) async {
    try {
      if (state.recipes.any((e) => e.id == event.id)) {
        final updatedRecipe = await getRecipeByIdUseCase(
          GetRecipeByIdUseCaseParams(id: event.id),
        );

        final category = updatedRecipe!.categoryId != null
            ? (await getCategoryByIdUseCase(
                GetCategoryByIdUseCaseParams(id: updatedRecipe.categoryId!),
              ))!
            : null;

        final userProfile = await getUserProfileByIdUseCase(
          GetUserProfileByIdUseCaseParams(id: updatedRecipe.userId),
        );

        final vm = RecipeViewModel.mapFrom(
          recipe: updatedRecipe,
          userProfile: userProfile!,
          coverUrl: updatedRecipe.coverId != null
              ? await getFileUrlUseCase(
                  GetFileUrlUseCaseParams(updatedRecipe.coverId!),
                )
              : null,
          category: category,
        );

        emit(
          state.copyWith(
            recipes: [...state.recipes.map((e) => e.id == event.id ? vm : e)],
          ),
        );
      }
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    }
  }

  @override
  Future<void> close() {
    unawaited(_recipeChangedSubscription.cancel());
    unawaited(_recipeDeletedSubscription.cancel());
    return super.close();
  }
}
