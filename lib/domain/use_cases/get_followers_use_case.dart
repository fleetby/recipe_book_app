import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class GetFollowersUseCase {
  const GetFollowersUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Future<List<UserProfileModel>> call(
    GetFollowersUseCaseParams params,
  ) async {
    return userProfilesRepository.getFollowers(params.followingId);
  }
}

class GetFollowersUseCaseParams {
  const GetFollowersUseCaseParams({required this.followingId});

  final String followingId;
}
