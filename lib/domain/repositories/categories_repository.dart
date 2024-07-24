import 'package:recipe_book_app/domain/models/category_model.dart';

abstract interface class CategoriesRepository {
  Future<List<CategoryModel>> getCategories();
  Future<CategoryModel?> getCategoryById(int id);
}
