import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/category_model.dart';
import 'package:recipe_book_app/domain/repositories/categories_repository.dart';

@injectable
class GetCategoryByIdUseCase {
  const GetCategoryByIdUseCase(this.categoriesRepository);

  final CategoriesRepository categoriesRepository;

  Future<CategoryModel?> call(GetCategoryByIdUseCaseParams params) async {
    return categoriesRepository.getCategoryById(params.id);
  }
}

class GetCategoryByIdUseCaseParams {
  const GetCategoryByIdUseCaseParams({required this.id});

  final int id;
}
