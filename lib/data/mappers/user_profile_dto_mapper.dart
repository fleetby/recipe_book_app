import 'package:recipe_book_app/data/dtos/user_profile_dto.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';

extension UserProfileDtoMapper on UserProfileDto {
  UserProfileModel get userProfileModel => UserProfileModel(
        userId: userId,
        name: name,
        avatar: avatar,
        followers: followers,
        following: following,
      );
}
