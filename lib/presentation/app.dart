import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/app_router.dart';
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/settings/settings_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

class App extends StatelessWidget {
  const App({
    required this.appRouter,
    required this.settingsBloc,
    super.key,
  });

  final AppRouter appRouter;
  final SettingsBloc settingsBloc;

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    if (settings is! SettingsLoaded) {
      throw StateError('Unexpected state: $settings');
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              get<AuthenticationBloc>()..add(const AuthenticationPreload()),
          lazy: false,
        ),
      ],
      child: MaterialApp.router(
        locale: settings.preferredLocale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        onGenerateTitle: (context) => AppLocalizations.of(context).appName,
        scrollBehavior: _PCDebugScrollBehavior(),
        themeMode: settings.preferredThemeMode,
        theme: ThemeData(
          actionIconTheme: ActionIconThemeData(
            backButtonIconBuilder: (context) =>
                const Icon(PhosphorIconsRegular.arrowLeft),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          actionIconTheme: ActionIconThemeData(
            backButtonIconBuilder: (context) =>
                const Icon(PhosphorIconsRegular.arrowLeft),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}

class _PCDebugScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
