import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/settings_repository.dart';

@singleton
class GetPreferredLocaleUseCase {
  const GetPreferredLocaleUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  Future<Locale?> call() => settingsRepository.getPreferredLocale();
}
