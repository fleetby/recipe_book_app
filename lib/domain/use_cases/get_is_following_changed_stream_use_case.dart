import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart';

@singleton
class GetIsFollowingChangedStreamUseCase {
  const GetIsFollowingChangedStreamUseCase(this.userProfilesRepository);

  final UserProfilesRepository userProfilesRepository;

  Stream<GetIsFollowingChangedStreamUseCaseEvent> call(
    GetIsFollowingChangedStreamUseCaseParams params,
  ) {
    return userProfilesRepository.isFollowingChanged.where((event) {
      var result = true;

      if (params.followerId != null) {
        result = result && params.followerId == event.$1;
      }

      if (params.followingId != null) {
        result = result && params.followingId == event.$2;
      }

      return result;
    }).map(GetIsFollowingChangedStreamUseCaseEvent.fromTuple);
  }
}

class GetIsFollowingChangedStreamUseCaseParams {
  const GetIsFollowingChangedStreamUseCaseParams({
    this.followerId,
    this.followingId,
  });

  final String? followerId;
  final String? followingId;
}

class GetIsFollowingChangedStreamUseCaseEvent {
  const GetIsFollowingChangedStreamUseCaseEvent({
    required this.followerId,
    required this.followingId,
    required this.isFollowing,
  });
  GetIsFollowingChangedStreamUseCaseEvent.fromTuple(
    (String, String, bool) params,
  ) : this(
          followerId: params.$1,
          followingId: params.$2,
          isFollowing: params.$3,
        );

  final String followerId;
  final String followingId;
  final bool isFollowing;
}
