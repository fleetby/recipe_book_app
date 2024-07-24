import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/settings/settings_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/utils/tr.dart';
import 'package:recipe_book_app/presentation/widgets/selectable_option.dart';

class LanguageChooserBottomSheet extends StatefulWidget {
  const LanguageChooserBottomSheet({
    super.key,
  });

  @override
  State<LanguageChooserBottomSheet> createState() =>
      _LanguageChooserBottomSheetState();
}

class _LanguageChooserBottomSheetState extends State<LanguageChooserBottomSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bottomSheetAnimController;
  Locale? defaultLocale;

  @override
  void initState() {
    super.initState();
    defaultLocale = getDefaultSupportedLocale();
    _bottomSheetAnimController = BottomSheet.createAnimationController(this);
  }

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocSelector<SettingsBloc, SettingsState, Locale?>(
      selector: (state) => (state as SettingsLoaded).preferredLocale,
      builder: (context, preferredLocale) => BottomSheet(
        showDragHandle: true,
        animationController: _bottomSheetAnimController,
        onClosing: () {},
        builder: (context) => ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: AppLocalizations.supportedLocales.length +
              (defaultLocale != null ? 1 : 0),
          itemBuilder: (context, index) {
            if (defaultLocale != null && index == 0) {
              return SelectableOption(
                tr.defaultLocaleOption(getLocalizedLocaleName(defaultLocale!)),
                isSelected: preferredLocale == null,
                onSelect: () => context
                    .read<SettingsBloc>()
                    .add(const SettingsUpdatePreferredLocale(null)),
              );
            }
            index--;

            final localeOption = AppLocalizations.supportedLocales[index];
            return SelectableOption(
              getLocalizedLocaleName(localeOption),
              isSelected: localeOption == preferredLocale,
              onSelect: () => context
                  .read<SettingsBloc>()
                  .add(SettingsUpdatePreferredLocale(localeOption)),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bottomSheetAnimController.dispose();
    super.dispose();
  }
}
