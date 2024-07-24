part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = SettingsInitial;
  const factory SettingsState.loaded({
    required ThemeMode preferredThemeMode,
    required Locale? preferredLocale,
  }) = SettingsLoaded;
}
