import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/settings_repository.dart';

@singleton
class GetPreferredLocaleChangedStreamUseCase {
  const GetPreferredLocaleChangedStreamUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  Stream<void> call() => settingsRepository.preferredLocaleChanged;
}
