import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class FollowUseCase {
  const FollowUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Future<void> call(FollowUseCaseParams params) async {
    await userProfilesRepository.followUser(params.userId);
  }
}

class FollowUseCaseParams {
  const FollowUseCaseParams({required this.userId});

  final String userId;
}
