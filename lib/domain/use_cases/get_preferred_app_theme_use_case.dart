import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/constants/app_theme.dart';
import 'package:recipe_book_app/domain/repositories/settings_repository.dart';

@singleton
class GetPreferredAppThemeUseCase {
  const GetPreferredAppThemeUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  Future<AppTheme?> call() => settingsRepository.getPreferredAppTheme();
}
