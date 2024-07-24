import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'WorldRecipes';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String get recipesBranch => 'Recipes';

  @override
  String get searchBranch => 'Search';

  @override
  String get addBranch => 'Add';

  @override
  String get savedBranch => 'Saved';

  @override
  String get accountBranch => 'Account';

  @override
  String get recipesTab => 'Recipes';

  @override
  String get followingTab => 'Following';

  @override
  String get noFollowingYetPlaceholder => 'No following yet';

  @override
  String get noRecipesYetPlaceholder => 'No recipes yet';

  @override
  String get myRecipesTab => 'My recipes';

  @override
  String get anErrorOccured => 'An error occured';

  @override
  String get profileUpdated => 'Profile updated';

  @override
  String get editNameHint => 'Name';

  @override
  String get saveAction => 'Save';

  @override
  String get editTitleHint => 'Title';

  @override
  String get editDescriptionHint => 'Description';

  @override
  String get editServingsHint => 'Servings';

  @override
  String get editServingsExample => 'Count';

  @override
  String get editPreparationTimeHint => 'Preparation time';

  @override
  String get editPreparationTimeExample => '1h 30m';

  @override
  String get ingredientsLabel => 'Ingredients';

  @override
  String get addIngredientAction => 'Add ingredient';

  @override
  String get directionsLabel => 'Directions';

  @override
  String get addDirectionAction => 'Add direction';

  @override
  String get createAction => 'Create';

  @override
  String get uploadAnImageAction => 'Upload an image';

  @override
  String get editIngredientNameHint => 'Name';

  @override
  String get editIngredientQuantityOrHint => 'Quantity / hint';

  @override
  String get cancelAction => 'Cancel';

  @override
  String get addAction => 'Add';

  @override
  String get cannotBeBlankError => 'Cannot be blank';

  @override
  String get createRecipePageTitle => 'Create Recipe';

  @override
  String get successfullyCreatedRecipe => 'Successfully created recipe!';

  @override
  String get failedToCreateRecipe => 'Failed to create recipe!';

  @override
  String get viewAction => 'View';

  @override
  String get savedRecipesPageTitle => 'Saved Recipes';

  @override
  String get noSavedRecipesPlaceholder => 'No saved recipes';

  @override
  String get successfullySavedRecipe => 'Successfully saved recipe!';

  @override
  String get failedToSaveRecipe => 'Failed to save recipe!';

  @override
  String get editRecipePageTitle => 'Edit Recipe';

  @override
  String get deleteRecipeDialogTitle => 'Delete recipe';

  @override
  String get deleteRecipeDialogContent => 'Are you sure you want to delete this recipe?';

  @override
  String get deleteAction => 'Delete';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String commentsCount(int count) {
    return 'Comments ($count)';
  }

  @override
  String get seeCommentsAction => 'See comments';

  @override
  String get publishedByLabel => 'Published by';

  @override
  String get moreRecipesFromAuthorLabel => 'More recipes from the author';

  @override
  String get preparationTimeBlockTitle => 'Preparation time: ';

  @override
  String get servingsBlockTitle => 'Servings: ';

  @override
  String get findRecipesLabel => 'Find recipes';

  @override
  String get mostLikedSearchTypeLabel => 'Most liked';

  @override
  String get mostCommentedSearchTypeLabel => 'Most commented';

  @override
  String get newestSearchTypeLabel => 'Newest';

  @override
  String get oldestSearchTypeLabel => 'Oldest';

  @override
  String get searchForRecipesLabel => 'Search for recipes';

  @override
  String followersCount(int count) {
    return '$count followers';
  }

  @override
  String followingCount(int count) {
    return '$count following';
  }

  @override
  String get noRecipesFoundPlaceholder => 'No recipes found';

  @override
  String get signOutDialogTitle => 'Sign out';

  @override
  String get signOutDialogMessage => 'Are you sure you want to sign out?';

  @override
  String get signOutAction => 'Sign out';

  @override
  String stepLabel(int step) {
    return 'Step $step';
  }

  @override
  String commentsPageCommentCountLabel(int count) {
    return '$count comments';
  }

  @override
  String get noCommentsYetPlaceholder => 'No comments yet';

  @override
  String get addCommentAction => 'Add a comment';

  @override
  String defaultLocaleOption(String locale) {
    return '$locale (Default)';
  }

  @override
  String get followAction => 'Follow';

  @override
  String get unfollowAction => 'Unfollow';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get signInAction => 'Sign In';

  @override
  String get signUpAction => 'Sign Up';

  @override
  String get authenticationError => 'Authentication error';

  @override
  String get signInRequired => 'Sign in required';

  @override
  String get openProfileAction => 'Open profile';

  @override
  String get deleteCommentAction => 'Delete comment';

  @override
  String get deleteCommentDialogTitle => 'Delete comment';

  @override
  String get deleteCommentDialogMessage => 'Are you sure you want to delete this comment?';

  @override
  String get noCreatedRecipesPlaceholder => 'No created recipes yet';

  @override
  String get couldNotLoadError => 'Could not load';

  @override
  String get retryAction => 'Retry';
}
