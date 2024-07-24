import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

String themeModeName(ThemeMode themeMode, BuildContext context) {
  final tr = AppLocalizations.of(context);
  return switch (themeMode) {
    ThemeMode.system => tr.themeSystem,
    ThemeMode.light => tr.themeLight,
    ThemeMode.dark => tr.themeDark,
  };
}
