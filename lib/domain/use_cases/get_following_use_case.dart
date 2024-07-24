import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class GetFollowingUseCase {
  const GetFollowingUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Future<List<UserProfileModel>> call(
    GetFollowingUseCaseParams params,
  ) async {
    return userProfilesRepository.getFollowing(
      params.followerId,
      invalidateCache: params.invalidateCache,
    );
  }
}

class GetFollowingUseCaseParams {
  const GetFollowingUseCaseParams({
    required this.followerId,
    required this.invalidateCache,
  });

  final String followerId;
  final bool invalidateCache;
}
