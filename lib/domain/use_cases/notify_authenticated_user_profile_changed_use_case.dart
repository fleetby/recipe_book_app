import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class NotifyAuthenticatedUserProfileChangedUseCase {
  const NotifyAuthenticatedUserProfileChangedUseCase(
    this.userProfilesRepository,
  );

  final UserProfilesRepository userProfilesRepository;

  void call() => userProfilesRepository.notifyAuthenticatedUserProfileChanged();
}
