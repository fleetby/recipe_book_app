import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class CheckIsFollowingUseCase {
  const CheckIsFollowingUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Future<bool> call(CheckIsFollowingUseCaseParams params) async {
    return userProfilesRepository.checkIsUserFollowing(
      params.followerId,
      params.followingId,
    );
  }
}

class CheckIsFollowingUseCaseParams {
  const CheckIsFollowingUseCaseParams({
    required this.followerId,
    required this.followingId,
  });

  final String followerId;
  final String followingId;
}
