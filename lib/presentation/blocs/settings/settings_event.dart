part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.load() = SettingsLoad;
  const factory SettingsEvent.updatePreferredTheme(
    ThemeMode preferredThemeMode,
  ) = SettingsUpdatePreferredTheme;
  const factory SettingsEvent.updatePreferredLocale(
    Locale? preferredLocale,
  ) = SettingsUpdatePreferredLocale;
}
