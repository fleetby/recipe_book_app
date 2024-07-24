import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class CreateOrEditUserProfileUseCase {
  const CreateOrEditUserProfileUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Future<UserProfileModel> call(
    CreateOrEditUserProfileUseCaseParams params,
  ) async {
    return userProfilesRepository.upsertUserProfile(
      name: params.name,
      avatar: params.avatar,
    );
  }
}

class CreateOrEditUserProfileUseCaseParams {
  CreateOrEditUserProfileUseCaseParams({
    required this.name,
    required this.avatar,
  });

  final String name;
  final String? avatar;
}
