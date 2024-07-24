import 'package:recipe_book_app/data/converters/typedefs.dart';
import 'package:recipe_book_app/data/dtos/user_profile_dto.dart';

UserProfileDto? maybeSingleUserProfileConverter(MaybeSingleJson data) =>
    data != null ? UserProfileDto.fromJson(data) : null;

UserProfileDto singleUserProfileConverter(SingleJson data) =>
    UserProfileDto.fromJson(data);

List<UserProfileDto> listUserProfileConverter(ListJson data) =>
    data.map(UserProfileDto.fromJson).toList();
