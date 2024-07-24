import 'dart:async';
import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/constants/app_theme.dart';
import 'package:recipe_book_app/domain/repositories/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _keyPreferredAppTheme = 'preferred_app_theme';
  static const _keyPreferredLocale = 'preferred_locale';

  final _preferredAppThemeChangedController =
      StreamController<void>.broadcast();
  final _preferredLocaleChangedController = StreamController<void>.broadcast();

  @override
  Future<AppTheme?> getPreferredAppTheme() {
    final value = sharedPreferences.getString(_keyPreferredAppTheme);
    if (value == null) {
      return Future.value();
    }
    return Future.value(
      AppTheme.values.firstWhere((element) => element.name == value),
    );
  }

  @override
  Future<Locale?> getPreferredLocale() {
    final value = sharedPreferences.getString(_keyPreferredLocale);
    if (value == null) {
      return Future.value();
    }
    return Future.value(Locale.fromSubtags(languageCode: value));
  }

  @override
  Stream<void> get preferredAppThemeChanged =>
      _preferredAppThemeChangedController.stream;

  @override
  Stream<void> get preferredLocaleChanged =>
      _preferredLocaleChangedController.stream;

  @override
  Future<void> setPreferredAppTheme(AppTheme appTheme) async {
    await sharedPreferences.setString(_keyPreferredAppTheme, appTheme.name);
    _preferredAppThemeChangedController.add(null);
  }

  @override
  Future<void> setPreferredLocale(Locale? locale) async {
    if (locale != null) {
      await sharedPreferences.setString(
        _keyPreferredLocale,
        locale.languageCode,
      );
    } else {
      await sharedPreferences.remove(_keyPreferredLocale);
    }
    _preferredLocaleChangedController.add(null);
  }
}
