import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/constants/app_theme.dart';
import 'package:recipe_book_app/domain/repositories/settings_repository.dart';

@singleton
class SetPreferredAppThemeUseCase {
  const SetPreferredAppThemeUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  Future<void> call(SetPreferredAppThemeUseCaseParams params) =>
      settingsRepository.setPreferredAppTheme(params.appTheme);
}

class SetPreferredAppThemeUseCaseParams {
  const SetPreferredAppThemeUseCaseParams(this.appTheme);

  final AppTheme appTheme;
}
