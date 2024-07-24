import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class GetUserProfileByIdUseCase {
  const GetUserProfileByIdUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Future<UserProfileModel?> call(
    GetUserProfileByIdUseCaseParams params,
  ) async {
    return userProfilesRepository.getUserProfileById(params.id);
  }
}

class GetUserProfileByIdUseCaseParams {
  const GetUserProfileByIdUseCaseParams({required this.id});

  final String id;
}
