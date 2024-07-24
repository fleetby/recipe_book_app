import 'package:recipe_book_app/data/dtos/category_dto.dart';
import 'package:recipe_book_app/domain/models/category_model.dart';

extension CategoryDtoMapper on CategoryDto {
  CategoryModel get categoryModel => CategoryModel(
        id: id,
        parentId: parentId,
        name: name,
      );
}
