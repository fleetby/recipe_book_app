import 'package:recipe_book_app/data/dtos/category_dto.dart';

Iterable<CategoryDto> categoryListConverter(List<Map<String, dynamic>> data) =>
    data.map(CategoryDto.fromJson);
