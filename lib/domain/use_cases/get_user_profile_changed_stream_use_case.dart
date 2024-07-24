import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class GetUserProfileChangedStreamUseCase {
  const GetUserProfileChangedStreamUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Stream<String> call(
    GetUserProfileChangedStreamUseCaseParams params,
  ) =>
      userProfilesRepository.userProfileChanged.where(
        (userId) {
          if (params.userId != null) {
            return userId == params.userId;
          }
          return true;
        },
      );
}

class GetUserProfileChangedStreamUseCaseParams {
  const GetUserProfileChangedStreamUseCaseParams({this.userId});

  final String? userId;
}
