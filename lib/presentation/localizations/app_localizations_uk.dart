import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'WorldRecipes';

  @override
  String get settings => 'Налаштування';

  @override
  String get language => 'Мова';

  @override
  String get theme => 'Тема';

  @override
  String get recipesBranch => 'Рецепти';

  @override
  String get searchBranch => 'Пошук';

  @override
  String get addBranch => 'Додати';

  @override
  String get savedBranch => 'Збережено';

  @override
  String get accountBranch => 'Аккаунт';

  @override
  String get recipesTab => 'Рецепти';

  @override
  String get followingTab => 'Підписки';

  @override
  String get noFollowingYetPlaceholder => 'Немає підписок';

  @override
  String get noRecipesYetPlaceholder => 'Немає рецептів';

  @override
  String get myRecipesTab => 'Мої рецепти';

  @override
  String get anErrorOccured => 'Сталась помилка';

  @override
  String get profileUpdated => 'Профіль оновлено';

  @override
  String get editNameHint => 'Ім\'я';

  @override
  String get saveAction => 'Зберегти';

  @override
  String get editTitleHint => 'Заголовок';

  @override
  String get editDescriptionHint => 'Опис';

  @override
  String get editServingsHint => 'Порції';

  @override
  String get editServingsExample => 'Кількість';

  @override
  String get editPreparationTimeHint => 'Час приготування';

  @override
  String get editPreparationTimeExample => '1 година 30 хв';

  @override
  String get ingredientsLabel => 'Інгредієнти';

  @override
  String get addIngredientAction => 'Додати інгредієнт';

  @override
  String get directionsLabel => 'Кроки';

  @override
  String get addDirectionAction => 'Додати крок';

  @override
  String get createAction => 'Створити';

  @override
  String get uploadAnImageAction => 'Завантажити зображення';

  @override
  String get editIngredientNameHint => 'Назва';

  @override
  String get editIngredientQuantityOrHint => 'Кількість / підказка';

  @override
  String get cancelAction => 'Скасувати';

  @override
  String get addAction => 'Додати';

  @override
  String get cannotBeBlankError => 'Не може бути порожнім';

  @override
  String get createRecipePageTitle => 'Створити рецепт';

  @override
  String get successfullyCreatedRecipe => 'Рецепт успішно створено!';

  @override
  String get failedToCreateRecipe => 'Не вдалося створити рецепт!';

  @override
  String get viewAction => 'Переглянути';

  @override
  String get savedRecipesPageTitle => 'Збережені рецепти';

  @override
  String get noSavedRecipesPlaceholder => 'Немає збережених рецептів';

  @override
  String get successfullySavedRecipe => 'Рецепт успішно збережено!';

  @override
  String get failedToSaveRecipe => 'Не вдалося зберегти рецепт!';

  @override
  String get editRecipePageTitle => 'Редагувати рецепт';

  @override
  String get deleteRecipeDialogTitle => 'Видалити рецепт';

  @override
  String get deleteRecipeDialogContent => 'Ви впевнені, що хочете видалити цей рецепт?';

  @override
  String get deleteAction => 'Видалити';

  @override
  String get themeSystem => 'Системна';

  @override
  String get themeLight => 'Світла';

  @override
  String get themeDark => 'Темна';

  @override
  String commentsCount(int count) {
    return 'Коментарі ($count)';
  }

  @override
  String get seeCommentsAction => 'Переглянути коментарі';

  @override
  String get publishedByLabel => 'Опубліковано';

  @override
  String get moreRecipesFromAuthorLabel => 'Більше рецептів від автора';

  @override
  String get preparationTimeBlockTitle => 'Час приготування: ';

  @override
  String get servingsBlockTitle => 'Порції: ';

  @override
  String get findRecipesLabel => 'Знайти рецепти';

  @override
  String get mostLikedSearchTypeLabel => 'Найбільш вподобані';

  @override
  String get mostCommentedSearchTypeLabel => 'Найбільш коментовані';

  @override
  String get newestSearchTypeLabel => 'Новіші';

  @override
  String get oldestSearchTypeLabel => 'Старіші';

  @override
  String get searchForRecipesLabel => 'Пошук рецептів';

  @override
  String followersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'підписників',
      one: 'підписник',
    );
    return '$count $_temp0';
  }

  @override
  String followingCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'підписок',
      one: 'підписка',
    );
    return '$count $_temp0';
  }

  @override
  String get noRecipesFoundPlaceholder => 'Нічого не знайдено';

  @override
  String get signOutDialogTitle => 'Вихід';

  @override
  String get signOutDialogMessage => 'Ви впевнені, що хочете вийти?';

  @override
  String get signOutAction => 'Вийти';

  @override
  String stepLabel(int step) {
    return 'Крок $step';
  }

  @override
  String commentsPageCommentCountLabel(int count) {
    return '$count коментарів';
  }

  @override
  String get noCommentsYetPlaceholder => 'Немає коментарів';

  @override
  String get addCommentAction => 'Додати коментар';

  @override
  String defaultLocaleOption(String locale) {
    return '$locale (За замовчуванням)';
  }

  @override
  String get followAction => 'Підписатися';

  @override
  String get unfollowAction => 'Відписатися';

  @override
  String get emailLabel => 'Електронна пошта';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get signInAction => 'Вхід';

  @override
  String get signUpAction => 'Реєстрація';

  @override
  String get authenticationError => 'Помилка автентифікації';

  @override
  String get signInRequired => 'Необхідно увійти';

  @override
  String get openProfileAction => 'Відкрити профіль';

  @override
  String get deleteCommentAction => 'Видалити коментар';

  @override
  String get deleteCommentDialogTitle => 'Видалити коментар';

  @override
  String get deleteCommentDialogMessage => 'Ви впевнені, що хочете видалити цей коментар?';

  @override
  String get noCreatedRecipesPlaceholder => 'Немає створених рецептів';

  @override
  String get couldNotLoadError => 'Не вдалося завантажити';

  @override
  String get retryAction => 'Повторити';
}
