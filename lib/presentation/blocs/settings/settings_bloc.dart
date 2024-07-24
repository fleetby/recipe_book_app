import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/constants/app_theme.dart';
import 'package:recipe_book_app/domain/use_cases/get_preferred_app_theme_changed_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_preferred_app_theme_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_preferred_locale_changed_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_preferred_locale_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/set_preferred_app_theme_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/set_preferred_locale_use_case.dart';

part 'settings_bloc.freezed.dart';

part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(
    this.getPreferredAppThemeUseCase,
    this.getPreferredLocaleUseCase,
    this.getPreferredAppThemeChangedStreamUseCase,
    this.getPreferredLocaleChangedStreamUseCase,
    this.setPreferredAppThemeUseCase,
    this.setPreferredLocaleUseCase,
  ) : super(const SettingsInitial()) {
    on<SettingsLoad>(_load, transformer: restartable());
    on<SettingsUpdatePreferredTheme>(_updatePreferredTheme);
    on<SettingsUpdatePreferredLocale>(_updatePreferredLocale);

    _preferredAppThemeChangedStreamSubscription =
        getPreferredAppThemeChangedStreamUseCase().listen((_) {
      add(const SettingsLoad());
    });

    _preferredLocaleChangedStreamSubscription =
        getPreferredLocaleChangedStreamUseCase().listen((_) {
      add(const SettingsLoad());
    });
  }

  final GetPreferredAppThemeUseCase getPreferredAppThemeUseCase;
  final GetPreferredLocaleUseCase getPreferredLocaleUseCase;
  final GetPreferredAppThemeChangedStreamUseCase
      getPreferredAppThemeChangedStreamUseCase;
  final GetPreferredLocaleChangedStreamUseCase
      getPreferredLocaleChangedStreamUseCase;
  final SetPreferredAppThemeUseCase setPreferredAppThemeUseCase;
  final SetPreferredLocaleUseCase setPreferredLocaleUseCase;

  late final StreamSubscription<void>
      _preferredAppThemeChangedStreamSubscription;
  late final StreamSubscription<void> _preferredLocaleChangedStreamSubscription;

  Future<void> _load(SettingsLoad event, Emitter<SettingsState> emit) async {
    final preferredAppTheme = await getPreferredAppThemeUseCase();
    final preferredLocale = await getPreferredLocaleUseCase();
    emit(
      SettingsState.loaded(
        preferredThemeMode: switch (preferredAppTheme) {
          AppTheme.system || null => ThemeMode.system,
          AppTheme.light => ThemeMode.light,
          AppTheme.dark => ThemeMode.dark,
        },
        preferredLocale: preferredLocale,
      ),
    );
  }

  Future<void> _updatePreferredTheme(
    SettingsUpdatePreferredTheme event,
    Emitter<SettingsState> emit,
  ) async {
    await setPreferredAppThemeUseCase(
      SetPreferredAppThemeUseCaseParams(
        switch (event.preferredThemeMode) {
          ThemeMode.system => AppTheme.system,
          ThemeMode.light => AppTheme.light,
          ThemeMode.dark => AppTheme.dark,
        },
      ),
    );
    if (state case final SettingsLoaded state) {
      emit(state.copyWith(preferredThemeMode: event.preferredThemeMode));
    } else {
      add(const SettingsLoad());
    }
  }

  Future<void> _updatePreferredLocale(
    SettingsUpdatePreferredLocale event,
    Emitter<SettingsState> emit,
  ) async {
    await setPreferredLocaleUseCase(
      SetPreferredLocaleUseCaseParams(event.preferredLocale),
    );
    if (state case final SettingsLoaded state) {
      emit(state.copyWith(preferredLocale: event.preferredLocale));
    } else {
      add(const SettingsLoad());
    }
  }

  @override
  Future<void> close() {
    _preferredAppThemeChangedStreamSubscription.cancel();
    _preferredLocaleChangedStreamSubscription.cancel();
    return super.close();
  }
}
