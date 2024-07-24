import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/data/caching/cache.dart';
import 'package:recipe_book_app/data/caching/typed_cache_extensions.dart';
import 'package:recipe_book_app/data/caching/typed_cache_key.dart';
import 'package:recipe_book_app/data/converters/category_list_converter.dart';
import 'package:recipe_book_app/data/mappers/category_dto_mapper.dart';
import 'package:recipe_book_app/domain/models/category_model.dart';
import 'package:recipe_book_app/domain/repositories/categories_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@Singleton(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  const CategoriesRepositoryImpl(this.supabaseClient, this.cache);

  final SupabaseClient supabaseClient;
  final Cache cache;

  TypedCacheKey<CategoryModel> _categoryCacheKey(int id) =>
      TypedCacheKey('category-$id');
  static const _categoriesCacheKey =
      TypedCacheKey<List<CategoryModel>>('categories');

  @override
  Future<List<CategoryModel>> getCategories() async {
    if (cache.getTyped(_categoriesCacheKey) != null) {
      return cache.getTyped(_categoriesCacheKey)!;
    }

    final dtos = await supabaseClient
        .from('Category')
        .select()
        .withConverter(categoryListConverter);

    final categoryModels = dtos.map((dto) => dto.categoryModel).toList();

    cache.setTyped(_categoriesCacheKey, categoryModels);
    for (final model in categoryModels) {
      cache.setTyped(_categoryCacheKey(model.id), model);
    }

    return categoryModels;
  }

  @override
  Future<CategoryModel?> getCategoryById(int id) async {
    if (cache.getTyped(_categoryCacheKey(id)) != null) {
      return cache.getTyped(_categoryCacheKey(id))!;
    }

    final dtos = await supabaseClient
        .from('Category')
        .select()
        .eq('id', id)
        .withConverter(categoryListConverter);

    final categoryModel = dtos.firstOrNull?.categoryModel;

    if (categoryModel != null) {
      cache.setTyped(_categoryCacheKey(id), categoryModel);
    }

    return categoryModel;
  }
}
