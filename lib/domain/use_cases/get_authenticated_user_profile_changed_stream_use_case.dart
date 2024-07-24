import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class GetAuthenticatedUserProfileChangedStreamUseCase {
  const GetAuthenticatedUserProfileChangedStreamUseCase(
    this.userProfilesRepository,
  );

  final UserProfilesRepository userProfilesRepository;

  Stream<void> call() => userProfilesRepository.authenticatedUserProfileChanged;
}
