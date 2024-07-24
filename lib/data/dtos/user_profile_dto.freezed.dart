// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
mixin _$UserProfileDto {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  int get following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res, UserProfileDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      String name,
      String? avatar,
      int followers,
      int following});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res, $Val extends UserProfileDto>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? followers = null,
    Object? following = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileDtoImplCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$$UserProfileDtoImplCopyWith(_$UserProfileDtoImpl value,
          $Res Function(_$UserProfileDtoImpl) then) =
      __$$UserProfileDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      String name,
      String? avatar,
      int followers,
      int following});
}

/// @nodoc
class __$$UserProfileDtoImplCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res, _$UserProfileDtoImpl>
    implements _$$UserProfileDtoImplCopyWith<$Res> {
  __$$UserProfileDtoImplCopyWithImpl(
      _$UserProfileDtoImpl _value, $Res Function(_$UserProfileDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? followers = null,
    Object? following = null,
  }) {
    return _then(_$UserProfileDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDtoImpl implements _UserProfileDto {
  const _$UserProfileDtoImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      required this.name,
      required this.avatar,
      required this.followers,
      required this.following});

  factory _$UserProfileDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDtoImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final int followers;
  @override
  final int following;

  @override
  String toString() {
    return 'UserProfileDto(userId: $userId, name: $name, avatar: $avatar, followers: $followers, following: $following)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, name, avatar, followers, following);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDtoImplCopyWith<_$UserProfileDtoImpl> get copyWith =>
      __$$UserProfileDtoImplCopyWithImpl<_$UserProfileDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDtoImplToJson(
      this,
    );
  }
}

abstract class _UserProfileDto implements UserProfileDto {
  const factory _UserProfileDto(
      {@JsonKey(name: 'user_id') required final String userId,
      required final String name,
      required final String? avatar,
      required final int followers,
      required final int following}) = _$UserProfileDtoImpl;

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$UserProfileDtoImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get name;
  @override
  String? get avatar;
  @override
  int get followers;
  @override
  int get following;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileDtoImplCopyWith<_$UserProfileDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
