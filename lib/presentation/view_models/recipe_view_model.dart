import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_book_app/domain/models/category_model.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';

part 'recipe_view_model.freezed.dart';

@freezed
class RecipeViewModel with _$RecipeViewModel {
  const factory RecipeViewModel({
    required int id,
    required String userId,
    required int? categoryId,
    required String? categoryName,
    required String title,
    required String description,
    required String? coverUrl,
    required List<RecipeIngredientModel>? ingredients,
    required List<RecipeDirectionModel>? directions,
    required String authorProfileName,
    required String authorId,
    required DateTime publishedAt,
    required String? servings,
    required String? preparationTime,
    required String? authorAvatarId,
    required int savedCount,
    required int commentCount,
  }) = _RecipeViewModel;

  factory RecipeViewModel.mapFrom({
    required RecipeModel recipe,
    required UserProfileModel userProfile,
    required CategoryModel? category,
    required String? coverUrl,
  }) =>
      RecipeViewModel(
        id: recipe.id,
        userId: recipe.userId,
        categoryId: recipe.categoryId,
        categoryName: category?.name,
        title: recipe.title,
        description: recipe.description,
        coverUrl: coverUrl,
        ingredients: recipe.ingredients,
        directions: recipe.directions,
        authorProfileName: userProfile.name,
        authorId: recipe.userId,
        publishedAt: recipe.publishedAt,
        servings: recipe.servings,
        preparationTime: recipe.preparationTime,
        authorAvatarId: userProfile.avatar,
        savedCount: recipe.savedCount,
        commentCount: recipe.commentCount,
      );
}
