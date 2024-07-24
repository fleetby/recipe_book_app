import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/data/caching/cache.dart';
import 'package:recipe_book_app/data/converters/recipe_comment_converters.dart';
import 'package:recipe_book_app/data/mappers/recipe_comment_dto_mapper.dart';
import 'package:recipe_book_app/domain/models/recipe_comment_model.dart';
import 'package:recipe_book_app/domain/repositories/recipe_comments_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@Singleton(as: RecipeCommentsRepository)
class RecipeCommentsRepositoryImpl implements RecipeCommentsRepository {
  const RecipeCommentsRepositoryImpl(this.supabaseClient, this.cache);

  final SupabaseClient supabaseClient;
  final Cache cache;

  @override
  Future<RecipeCommentModel?> getRecipeCommentById(int id) async {
    if (cache.get('recipe-comment-$id') != null) {
      return cache.get('recipe-comment-$id') as RecipeCommentModel;
    }

    final dto = await supabaseClient
        .from('RecipeComment')
        .select()
        .eq('id', id)
        .maybeSingle()
        .withConverter(maybeSingleRecipeCommentConverter);

    final model = dto?.recipeCommentModel;

    if (model != null) {
      cache.set('recipe-comment-$id', model);
    }

    return model;
  }

  @override
  Future<List<RecipeCommentModel>> getRecipeComments(
    int recipeId, {
    bool omitCache = false,
  }) async {
    if (!omitCache && cache.get('recipe-comments-$recipeId') != null) {
      return cache.get('recipe-comments-$recipeId') as List<RecipeCommentModel>;
    }

    final dtos = await supabaseClient
        .from('RecipeComment')
        .select()
        .eq('recipe_id', recipeId)
        .order('created_at')
        .withConverter(listRecipeCommentConverter);

    final models = dtos.map((dto) => dto.recipeCommentModel).toList();

    cache.set('recipe-comments-$recipeId', models);
    for (final model in models) {
      cache.set('recipe-comment-${model.id}', model);
    }

    return models;
  }

  @override
  Future<RecipeCommentModel> postComment({
    required String text,
    required int recipeId,
  }) async {
    final dto = await supabaseClient
        .from('RecipeComment')
        .insert({
          'recipe_id': recipeId,
          'text': text,
        })
        .select()
        .single()
        .withConverter(maybeSingleRecipeCommentConverter);

    final model = dto!.recipeCommentModel;
    cache
      ..set('recipe-comment-${model.id}', model)
      ..set(
        'recipe-comments-$recipeId',
        [
          model,
          ...cache.get('recipe-comments-$recipeId') as List<RecipeCommentModel>,
        ],
      );

    return model;
  }

  @override
  Future<void> deleteComment(int id) async {
    await supabaseClient.from('RecipeComment').delete().eq('id', id);
  }
}
