import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/blocs/settings/settings_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/utils/theme_mode_name.dart';
import 'package:recipe_book_app/presentation/utils/tr.dart';
import 'package:recipe_book_app/presentation/widgets/language_chooser_bottom_sheet.dart';
import 'package:recipe_book_app/presentation/widgets/theme_chooser_bottom_sheet.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.settings),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context) => const LanguageChooserBottomSheet(),
              );
            },
            leading: const Icon(PhosphorIconsRegular.translate),
            title: Text(tr.language),
            subtitle: BlocSelector<SettingsBloc, SettingsState, Locale>(
              selector: (state) =>
                  (state as SettingsLoaded).preferredLocale ??
                  getDefaultSupportedLocale(),
              builder: (context, selectedLocale) =>
                  Text(getLocalizedLocaleName(selectedLocale)),
            ),
            trailing: const Icon(PhosphorIconsRegular.caretRight),
          ),
          ListTile(
            onTap: () {
              final settingsState = context.read<SettingsBloc>().state;
              if (settingsState is! SettingsLoaded) {
                return;
              }
              showModalBottomSheet<void>(
                context: context,
                builder: (context) => ThemeChooserBottomSheet(
                  initial: settingsState.preferredThemeMode,
                  onSelected: (theme) {
                    context
                        .read<SettingsBloc>()
                        .add(SettingsUpdatePreferredTheme(theme));
                  },
                ),
              );
            },
            leading: const Icon(PhosphorIconsRegular.palette),
            title: Text(tr.theme),
            subtitle: BlocSelector<SettingsBloc, SettingsState, ThemeMode>(
              selector: (state) => (state as SettingsLoaded).preferredThemeMode,
              builder: (context, themeMode) =>
                  Text(themeModeName(themeMode, context)),
            ),
            trailing: const Icon(PhosphorIconsRegular.caretRight),
          ),
        ],
      ),
    );
  }
}
