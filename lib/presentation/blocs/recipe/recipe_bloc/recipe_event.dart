part of 'recipe_bloc.dart';

@freezed
sealed class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.load(int id) = RecipeLoad;
  const factory RecipeEvent.save() = RecipeSave;
  const factory RecipeEvent.unsave() = RecipeUnsave;
  const factory RecipeEvent.followAuthor() = RecipeFollowAuthor;
  const factory RecipeEvent.unfollowAuthor() = RecipeUnfollowAuthor;
  const factory RecipeEvent.setAuthorFollowed(bool followed) =
      RecipeSetAuthorFollowed;
}
