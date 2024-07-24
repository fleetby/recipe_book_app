import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/app.dart';
import 'package:recipe_book_app/presentation/blocs/settings/settings_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await registerDependencies();
  final settingsBloc = get<SettingsBloc>()..add(const SettingsLoad());
  await settingsBloc.stream.firstWhere((state) => state is SettingsLoaded);
  runApp(
    BlocProvider.value(
      value: settingsBloc,
      child: App(
        appRouter: get(),
        settingsBloc: settingsBloc,
      ),
    ),
  );
}
