import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class UnfollowUseCase {
  const UnfollowUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Future<void> call(UnfollowUseCaseParams params) async {
    await userProfilesRepository.unfollowUser(params.userId);
  }
}

class UnfollowUseCaseParams {
  const UnfollowUseCaseParams({required this.userId});

  final String userId;
}
