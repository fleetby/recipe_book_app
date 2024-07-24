import 'dart:io';
import 'dart:ui';

import 'package:dartx/dartx.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

Locale getDefaultSupportedLocale() {
  final platformLocale = Locale(Platform.localeName);
  return AppLocalizations.supportedLocales.firstOrNullWhere(
        (supportedLocale) =>
            supportedLocale.languageCode == platformLocale.languageCode,
      ) ??
      AppLocalizations.supportedLocales.first;
}

String getLocalizedLocaleName(Locale locale) {
  final localeNames = LocaleNamesLocalizationsDelegate.nativeLocaleNames;
  final name = localeNames[locale.languageCode] ?? 'Unknown';
  return name.capitalize();
}
