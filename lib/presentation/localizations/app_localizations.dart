import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_uk.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localizations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('uk')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'WorldRecipes'**
  String get appName;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @recipesBranch.
  ///
  /// In en, this message translates to:
  /// **'Recipes'**
  String get recipesBranch;

  /// No description provided for @searchBranch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchBranch;

  /// No description provided for @addBranch.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get addBranch;

  /// No description provided for @savedBranch.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get savedBranch;

  /// No description provided for @accountBranch.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountBranch;

  /// No description provided for @recipesTab.
  ///
  /// In en, this message translates to:
  /// **'Recipes'**
  String get recipesTab;

  /// No description provided for @followingTab.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get followingTab;

  /// No description provided for @noFollowingYetPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'No following yet'**
  String get noFollowingYetPlaceholder;

  /// No description provided for @noRecipesYetPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'No recipes yet'**
  String get noRecipesYetPlaceholder;

  /// No description provided for @myRecipesTab.
  ///
  /// In en, this message translates to:
  /// **'My recipes'**
  String get myRecipesTab;

  /// No description provided for @anErrorOccured.
  ///
  /// In en, this message translates to:
  /// **'An error occured'**
  String get anErrorOccured;

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated'**
  String get profileUpdated;

  /// No description provided for @editNameHint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get editNameHint;

  /// No description provided for @saveAction.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveAction;

  /// No description provided for @editTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get editTitleHint;

  /// No description provided for @editDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get editDescriptionHint;

  /// No description provided for @editServingsHint.
  ///
  /// In en, this message translates to:
  /// **'Servings'**
  String get editServingsHint;

  /// No description provided for @editServingsExample.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get editServingsExample;

  /// No description provided for @editPreparationTimeHint.
  ///
  /// In en, this message translates to:
  /// **'Preparation time'**
  String get editPreparationTimeHint;

  /// No description provided for @editPreparationTimeExample.
  ///
  /// In en, this message translates to:
  /// **'1h 30m'**
  String get editPreparationTimeExample;

  /// No description provided for @ingredientsLabel.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get ingredientsLabel;

  /// No description provided for @addIngredientAction.
  ///
  /// In en, this message translates to:
  /// **'Add ingredient'**
  String get addIngredientAction;

  /// No description provided for @directionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Directions'**
  String get directionsLabel;

  /// No description provided for @addDirectionAction.
  ///
  /// In en, this message translates to:
  /// **'Add direction'**
  String get addDirectionAction;

  /// No description provided for @createAction.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get createAction;

  /// No description provided for @uploadAnImageAction.
  ///
  /// In en, this message translates to:
  /// **'Upload an image'**
  String get uploadAnImageAction;

  /// No description provided for @editIngredientNameHint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get editIngredientNameHint;

  /// No description provided for @editIngredientQuantityOrHint.
  ///
  /// In en, this message translates to:
  /// **'Quantity / hint'**
  String get editIngredientQuantityOrHint;

  /// No description provided for @cancelAction.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelAction;

  /// No description provided for @addAction.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get addAction;

  /// No description provided for @cannotBeBlankError.
  ///
  /// In en, this message translates to:
  /// **'Cannot be blank'**
  String get cannotBeBlankError;

  /// No description provided for @createRecipePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Recipe'**
  String get createRecipePageTitle;

  /// No description provided for @successfullyCreatedRecipe.
  ///
  /// In en, this message translates to:
  /// **'Successfully created recipe!'**
  String get successfullyCreatedRecipe;

  /// No description provided for @failedToCreateRecipe.
  ///
  /// In en, this message translates to:
  /// **'Failed to create recipe!'**
  String get failedToCreateRecipe;

  /// No description provided for @viewAction.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get viewAction;

  /// No description provided for @savedRecipesPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Saved Recipes'**
  String get savedRecipesPageTitle;

  /// No description provided for @noSavedRecipesPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'No saved recipes'**
  String get noSavedRecipesPlaceholder;

  /// No description provided for @successfullySavedRecipe.
  ///
  /// In en, this message translates to:
  /// **'Successfully saved recipe!'**
  String get successfullySavedRecipe;

  /// No description provided for @failedToSaveRecipe.
  ///
  /// In en, this message translates to:
  /// **'Failed to save recipe!'**
  String get failedToSaveRecipe;

  /// No description provided for @editRecipePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Recipe'**
  String get editRecipePageTitle;

  /// No description provided for @deleteRecipeDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete recipe'**
  String get deleteRecipeDialogTitle;

  /// No description provided for @deleteRecipeDialogContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this recipe?'**
  String get deleteRecipeDialogContent;

  /// No description provided for @deleteAction.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteAction;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @commentsCount.
  ///
  /// In en, this message translates to:
  /// **'Comments ({count})'**
  String commentsCount(int count);

  /// No description provided for @seeCommentsAction.
  ///
  /// In en, this message translates to:
  /// **'See comments'**
  String get seeCommentsAction;

  /// No description provided for @publishedByLabel.
  ///
  /// In en, this message translates to:
  /// **'Published by'**
  String get publishedByLabel;

  /// No description provided for @moreRecipesFromAuthorLabel.
  ///
  /// In en, this message translates to:
  /// **'More recipes from the author'**
  String get moreRecipesFromAuthorLabel;

  /// No description provided for @preparationTimeBlockTitle.
  ///
  /// In en, this message translates to:
  /// **'Preparation time: '**
  String get preparationTimeBlockTitle;

  /// No description provided for @servingsBlockTitle.
  ///
  /// In en, this message translates to:
  /// **'Servings: '**
  String get servingsBlockTitle;

  /// No description provided for @findRecipesLabel.
  ///
  /// In en, this message translates to:
  /// **'Find recipes'**
  String get findRecipesLabel;

  /// No description provided for @mostLikedSearchTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Most liked'**
  String get mostLikedSearchTypeLabel;

  /// No description provided for @mostCommentedSearchTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Most commented'**
  String get mostCommentedSearchTypeLabel;

  /// No description provided for @newestSearchTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Newest'**
  String get newestSearchTypeLabel;

  /// No description provided for @oldestSearchTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Oldest'**
  String get oldestSearchTypeLabel;

  /// No description provided for @searchForRecipesLabel.
  ///
  /// In en, this message translates to:
  /// **'Search for recipes'**
  String get searchForRecipesLabel;

  /// No description provided for @followersCount.
  ///
  /// In en, this message translates to:
  /// **'{count} followers'**
  String followersCount(int count);

  /// No description provided for @followingCount.
  ///
  /// In en, this message translates to:
  /// **'{count} following'**
  String followingCount(int count);

  /// No description provided for @noRecipesFoundPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'No recipes found'**
  String get noRecipesFoundPlaceholder;

  /// No description provided for @signOutDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOutDialogTitle;

  /// No description provided for @signOutDialogMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out?'**
  String get signOutDialogMessage;

  /// No description provided for @signOutAction.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOutAction;

  /// No description provided for @stepLabel.
  ///
  /// In en, this message translates to:
  /// **'Step {step}'**
  String stepLabel(int step);

  /// No description provided for @commentsPageCommentCountLabel.
  ///
  /// In en, this message translates to:
  /// **'{count} comments'**
  String commentsPageCommentCountLabel(int count);

  /// No description provided for @noCommentsYetPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'No comments yet'**
  String get noCommentsYetPlaceholder;

  /// No description provided for @addCommentAction.
  ///
  /// In en, this message translates to:
  /// **'Add a comment'**
  String get addCommentAction;

  /// No description provided for @defaultLocaleOption.
  ///
  /// In en, this message translates to:
  /// **'{locale} (Default)'**
  String defaultLocaleOption(String locale);

  /// No description provided for @followAction.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get followAction;

  /// No description provided for @unfollowAction.
  ///
  /// In en, this message translates to:
  /// **'Unfollow'**
  String get unfollowAction;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @signInAction.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signInAction;

  /// No description provided for @signUpAction.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUpAction;

  /// No description provided for @authenticationError.
  ///
  /// In en, this message translates to:
  /// **'Authentication error'**
  String get authenticationError;

  /// No description provided for @signInRequired.
  ///
  /// In en, this message translates to:
  /// **'Sign in required'**
  String get signInRequired;

  /// No description provided for @openProfileAction.
  ///
  /// In en, this message translates to:
  /// **'Open profile'**
  String get openProfileAction;

  /// No description provided for @deleteCommentAction.
  ///
  /// In en, this message translates to:
  /// **'Delete comment'**
  String get deleteCommentAction;

  /// No description provided for @deleteCommentDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete comment'**
  String get deleteCommentDialogTitle;

  /// No description provided for @deleteCommentDialogMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this comment?'**
  String get deleteCommentDialogMessage;

  /// No description provided for @noCreatedRecipesPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'No created recipes yet'**
  String get noCreatedRecipesPlaceholder;

  /// No description provided for @couldNotLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load'**
  String get couldNotLoadError;

  /// No description provided for @retryAction.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryAction;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'uk': return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
