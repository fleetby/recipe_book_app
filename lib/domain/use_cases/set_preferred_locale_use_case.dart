import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/settings_repository.dart';

@singleton
class SetPreferredLocaleUseCase {
  const SetPreferredLocaleUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  Future<void> call(SetPreferredLocaleUseCaseParams params) =>
      settingsRepository.setPreferredLocale(params.locale);
}

class SetPreferredLocaleUseCaseParams {
  const SetPreferredLocaleUseCaseParams(this.locale);

  final Locale? locale;
}
