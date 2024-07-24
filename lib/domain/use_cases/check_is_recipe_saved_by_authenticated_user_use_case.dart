import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart';

@injectable
class CheckIsRecipeSavedByAuthenticatedUserUseCase {
  const CheckIsRecipeSavedByAuthenticatedUserUseCase(this.recipesRepository);

  final RecipesRepository recipesRepository;

  Future<bool> call(
    CheckIsRecipeSavedByAuthenticatedUserUseCaseParams params,
  ) =>
      recipesRepository.isSavedByAuthenticatedUser(params.id);
}

class CheckIsRecipeSavedByAuthenticatedUserUseCaseParams {
  const CheckIsRecipeSavedByAuthenticatedUserUseCaseParams({required this.id});

  final int id;
}
