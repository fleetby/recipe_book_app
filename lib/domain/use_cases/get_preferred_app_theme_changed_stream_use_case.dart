import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/settings_repository.dart';

@singleton
class GetPreferredAppThemeChangedStreamUseCase {
  const GetPreferredAppThemeChangedStreamUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  Stream<void> call() => settingsRepository.preferredAppThemeChanged;
}
