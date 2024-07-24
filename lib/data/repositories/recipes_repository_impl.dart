import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/data/caching/cache.dart';
import 'package:recipe_book_app/data/caching/typed_cache_extensions.dart';
import 'package:recipe_book_app/data/caching/typed_cache_key.dart';
import 'package:recipe_book_app/data/converters/recipe_converters.dart';
import 'package:recipe_book_app/data/converters/recipe_list_converter.dart';
import 'package:recipe_book_app/data/dtos/covers_for_search_types_dto.dart';
import 'package:recipe_book_app/data/mappers/covers_for_search_types_dto_mapper.dart';
import 'package:recipe_book_app/data/mappers/recipe_dto_mapper.dart';
import 'package:recipe_book_app/data/mappers/recipe_direction_mappers.dart';
import 'package:recipe_book_app/data/mappers/recipe_ingredient_mappers.dart';
import 'package:recipe_book_app/data/utils/map_utils.dart';
import 'package:recipe_book_app/data/utils/pagination_utils.dart';
import 'package:recipe_book_app/domain/constants/get_recipes_source.dart';
import 'package:recipe_book_app/domain/constants/recipe_order.dart';
import 'package:recipe_book_app/domain/models/covers_for_search_types_model.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@Singleton(as: RecipesRepository)
class RecipesRepositoryImpl implements RecipesRepository {
  RecipesRepositoryImpl(this.supabaseClient, this.cache);

  final SupabaseClient supabaseClient;
  final Cache cache;

  final StreamController<int> _recipeChangedController =
      StreamController<int>.broadcast();
  final StreamController<int> _recipeDeletedController =
      StreamController<int>.broadcast();

  TypedCacheKey<List<RecipeModel>> _recipesCacheKey({
    required int pageNumber,
    required int pageSize,
    required RecipeOrder order,
    required GetRecipesSource? source,
    required String? authorId,
    required List<int>? exceptId,
    required String? query,
  }) =>
      TypedCacheKey(
        'recipes-$pageNumber-$pageSize-$order-$source-$authorId-$exceptId-$query',
      );

  TypedCacheKey<RecipeModel> _recipeCacheKey(int id) =>
      TypedCacheKey('recipe-$id');

  TypedCacheKey<bool> _recipeIsSavedCacheKey(int id) =>
      TypedCacheKey('recipe-is-saved-$id');

  static const _coversForSearchTypesCacheKey =
      TypedCacheKey<CoversForSearchTypesModel>('covers-for-search-types');

  @override
  Future<List<RecipeModel>> getRecipes({
    required int pageNumber,
    required int pageSize,
    RecipeOrder order = RecipeOrder.publishedAtDesc,
    String? query,
    GetRecipesSource? source,
    String? authorId,
    List<int>? exceptId,
  }) async {
    final currentListCacheKey = _recipesCacheKey(
      pageNumber: pageNumber,
      pageSize: pageSize,
      order: order,
      source: source,
      authorId: authorId,
      exceptId: exceptId,
      query: query,
    );
    if (cache.getTyped(currentListCacheKey) != null) {
      return cache.getTyped(currentListCacheKey)!;
    }

    final pagination = getPagination(pageNumber, pageSize);

    PostgrestFilterBuilder<PostgrestList> q;
    if (query != null) {
      q = supabaseClient
          .rpc('search_recipes', params: {'query': Uri.encodeFull(query)});
    } else {
      q = supabaseClient
          .from(
            switch (source) {
              null => 'RecipeView',
              GetRecipesSource.saved => 'SavedByUserRecipe',
              GetRecipesSource.following => 'FollowingRecipeView',
            },
          )
          .select();
    }

    if (authorId != null) {
      q = q.eq('user_id', authorId);
    }

    if (exceptId != null && exceptId.isNotEmpty) {
      q = q.not('id', 'in', exceptId);
    }

    final orderColumn = switch (order) {
      RecipeOrder.publishedAtAsc ||
      RecipeOrder.publishedAtDesc =>
        'published_at',
      RecipeOrder.commentCountAsc ||
      RecipeOrder.commentCountDesc =>
        'comment_count',
      RecipeOrder.savedCountAsc || RecipeOrder.savedCountDesc => 'saved_count',
    };
    if (order != RecipeOrder.publishedAtAsc &&
        order != RecipeOrder.publishedAtDesc &&
        source == GetRecipesSource.saved) {
      // TODO: Unimplemented.
      throw ArgumentError(
        'RecipeOrder must be publishedAtAsc or publishedAtDesc when source is GetRecipesSource.saved',
      );
    }

    final dtos = await q
        .order(
          switch (source) {
            null || GetRecipesSource.following => orderColumn,
            GetRecipesSource.saved => 'saved_at',
          },
          ascending: order.ascending,
        )
        .range(pagination.from, pagination.to)
        .withConverter(recipeListConverter);

    final models = dtos.map((dto) => dto.recipeModel).toList();

    cache.setTyped(currentListCacheKey, models);
    for (final model in models) {
      cache.setTyped(_recipeCacheKey(model.id), model);
    }

    return models;
  }

  @override
  Future<RecipeModel?> getRecipeById(int id) async {
    final cacheKey = _recipeCacheKey(id);

    if (cache.getTyped(cacheKey) != null) {
      return cache.getTyped(cacheKey)!;
    }

    final dtos = await supabaseClient
        .from('RecipeView')
        .select()
        .eq('id', id)
        .withConverter(recipeListConverter);

    final model = dtos.firstOrNull?.recipeModel;

    if (model != null) {
      cache.setTyped(cacheKey, model);
    }

    return model;
  }

  @override
  Future<RecipeModel> createRecipe({
    required String title,
    required String description,
    required String servings,
    required String preparationTime,
    required String? coverId,
    required List<RecipeIngredientModel> ingredients,
    required List<RecipeDirectionModel> directions,
  }) async {
    final result = await supabaseClient.from('Recipe').insert({
      'title': title,
      'description': description,
      'servings': servings,
      'preparation_time': preparationTime,
      'cover_id': coverId,
      'ingredients': ingredients.map((e) {
        return e.recipeIngredientDto.toJson();
      }).toList(),
      'directions': directions.map((e) {
        return e.recipeDirectionDto.toJson();
      }).toList(),
    }).select('id');

    final recipeId = result[0]['id'] as int;

    final dto = await supabaseClient
        .from('RecipeView')
        .select()
        .eq('id', recipeId)
        .single()
        .withConverter(singleRecipeConverter);

    final model = dto.recipeModel;
    cache.setTyped(_recipeCacheKey(model.id), model);

    return model;
  }

  @override
  Future<RecipeModel> updateRecipe({
    required int id,
    bool deleteCover = false,
    String? title,
    String? description,
    String? servings,
    String? preparationTime,
    List<RecipeIngredientModel>? ingredients,
    List<RecipeDirectionModel>? directions,
    String? coverId,
  }) async {
    final updateMap = {
      'title': title,
      'description': description,
      'servings': servings,
      'preparation_time': preparationTime,
      'cover_id': coverId,
      'ingredients': ingredients?.map((e) {
        return e.recipeIngredientDto.toJson();
      }).toList(),
      'directions': directions?.map((e) {
        return e.recipeDirectionDto.toJson();
      }).toList(),
    }.withoutNullValues;

    if (deleteCover) {
      updateMap['cover_id'] = null;
    }

    await supabaseClient.from('Recipe').update(updateMap).eq('id', id);

    final dto = await supabaseClient
        .from('RecipeView')
        .select()
        .eq('id', id)
        .single()
        .withConverter(singleRecipeConverter);

    final model = dto.recipeModel;
    cache.setTyped(_recipeCacheKey(model.id), model);

    notifyRecipeChanged(model.id);
    return model;
  }

  @override
  Future<void> deleteRecipeById(int id) async {
    await supabaseClient.from('Recipe').delete().eq('id', id);
    cache.deleteTyped(_recipeCacheKey(id));

    notifyRecipeDeleted(id);
  }

  @override
  Future<bool> isSavedByAuthenticatedUser(int id) async {
    final cacheKey = _recipeIsSavedCacheKey(id);
    final cached = cache.getTyped(cacheKey);
    if (cached != null) {
      return cached;
    }

    final result = await supabaseClient
        .from('SavedRecipe')
        .select()
        .eq('user_id', supabaseClient.auth.currentSession!.user.id)
        .eq('recipe_id', id)
        .maybeSingle();

    final isSaved = result != null;

    cache.setTyped(cacheKey, isSaved);
    return isSaved;
  }

  @override
  Future<void> saveRecipe(int id) async {
    await supabaseClient.from('SavedRecipe').upsert({'recipe_id': id});
    cache.setTyped(_recipeIsSavedCacheKey(id), true);
  }

  @override
  Future<void> unsaveRecipe(int id) async {
    await supabaseClient
        .from('SavedRecipe')
        .delete()
        .eq('recipe_id', id)
        .eq('user_id', supabaseClient.auth.currentSession!.user.id);
    cache.setTyped(_recipeIsSavedCacheKey(id), false);
  }

  @override
  Future<void> invalidateRecipesCache() async {
    cache.clear();
  }

  @override
  Future<CoversForSearchTypesModel> getCoversForSearchTypes() async {
    if (cache.getTyped(_coversForSearchTypesCacheKey) != null) {
      return cache.getTyped(_coversForSearchTypesCacheKey)!;
    }

    final dto = await supabaseClient
        .rpc<Map<String, dynamic>>('get_covers_for_search_types')
        .single()
        .withConverter(CoversForSearchTypesDto.fromJson);

    final model = dto.model;
    cache.setTyped(_coversForSearchTypesCacheKey, model);

    return model;
  }

  @override
  Stream<int> get recipeChanged => _recipeChangedController.stream;

  @override
  void notifyRecipeChanged(int id) {
    _recipeChangedController.add(id);
  }

  @override
  Stream<int> get recipeDeleted => _recipeDeletedController.stream;

  @override
  void notifyRecipeDeleted(int id) {
    _recipeDeletedController.add(id);
  }
}
