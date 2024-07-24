import 'dart:ui';

import 'package:recipe_book_app/domain/constants/app_theme.dart';

abstract interface class SettingsRepository {
  Future<AppTheme?> getPreferredAppTheme();
  Future<void> setPreferredAppTheme(AppTheme appTheme);

  Future<Locale?> getPreferredLocale();
  Future<void> setPreferredLocale(Locale? locale);

  Stream<void> get preferredAppThemeChanged;
  Stream<void> get preferredLocaleChanged;
}
