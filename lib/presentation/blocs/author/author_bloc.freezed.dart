// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) load,
    required TResult Function() follow,
    required TResult Function() unfollow,
    required TResult Function(bool followed) setFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? load,
    TResult? Function()? follow,
    TResult? Function()? unfollow,
    TResult? Function(bool followed)? setFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? load,
    TResult Function()? follow,
    TResult Function()? unfollow,
    TResult Function(bool followed)? setFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoad value) load,
    required TResult Function(AuthorFollow value) follow,
    required TResult Function(AuthorUnfollow value) unfollow,
    required TResult Function(AuthorSetFollowed value) setFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorLoad value)? load,
    TResult? Function(AuthorFollow value)? follow,
    TResult? Function(AuthorUnfollow value)? unfollow,
    TResult? Function(AuthorSetFollowed value)? setFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoad value)? load,
    TResult Function(AuthorFollow value)? follow,
    TResult Function(AuthorUnfollow value)? unfollow,
    TResult Function(AuthorSetFollowed value)? setFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorEventCopyWith<$Res> {
  factory $AuthorEventCopyWith(
          AuthorEvent value, $Res Function(AuthorEvent) then) =
      _$AuthorEventCopyWithImpl<$Res, AuthorEvent>;
}

/// @nodoc
class _$AuthorEventCopyWithImpl<$Res, $Val extends AuthorEvent>
    implements $AuthorEventCopyWith<$Res> {
  _$AuthorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthorLoadImplCopyWith<$Res> {
  factory _$$AuthorLoadImplCopyWith(
          _$AuthorLoadImpl value, $Res Function(_$AuthorLoadImpl) then) =
      __$$AuthorLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$AuthorLoadImplCopyWithImpl<$Res>
    extends _$AuthorEventCopyWithImpl<$Res, _$AuthorLoadImpl>
    implements _$$AuthorLoadImplCopyWith<$Res> {
  __$$AuthorLoadImplCopyWithImpl(
      _$AuthorLoadImpl _value, $Res Function(_$AuthorLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$AuthorLoadImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorLoadImpl implements AuthorLoad {
  const _$AuthorLoadImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'AuthorEvent.load(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorLoadImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorLoadImplCopyWith<_$AuthorLoadImpl> get copyWith =>
      __$$AuthorLoadImplCopyWithImpl<_$AuthorLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) load,
    required TResult Function() follow,
    required TResult Function() unfollow,
    required TResult Function(bool followed) setFollowed,
  }) {
    return load(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? load,
    TResult? Function()? follow,
    TResult? Function()? unfollow,
    TResult? Function(bool followed)? setFollowed,
  }) {
    return load?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? load,
    TResult Function()? follow,
    TResult Function()? unfollow,
    TResult Function(bool followed)? setFollowed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoad value) load,
    required TResult Function(AuthorFollow value) follow,
    required TResult Function(AuthorUnfollow value) unfollow,
    required TResult Function(AuthorSetFollowed value) setFollowed,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorLoad value)? load,
    TResult? Function(AuthorFollow value)? follow,
    TResult? Function(AuthorUnfollow value)? unfollow,
    TResult? Function(AuthorSetFollowed value)? setFollowed,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoad value)? load,
    TResult Function(AuthorFollow value)? follow,
    TResult Function(AuthorUnfollow value)? unfollow,
    TResult Function(AuthorSetFollowed value)? setFollowed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AuthorLoad implements AuthorEvent {
  const factory AuthorLoad(final String userId) = _$AuthorLoadImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$AuthorLoadImplCopyWith<_$AuthorLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorFollowImplCopyWith<$Res> {
  factory _$$AuthorFollowImplCopyWith(
          _$AuthorFollowImpl value, $Res Function(_$AuthorFollowImpl) then) =
      __$$AuthorFollowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorFollowImplCopyWithImpl<$Res>
    extends _$AuthorEventCopyWithImpl<$Res, _$AuthorFollowImpl>
    implements _$$AuthorFollowImplCopyWith<$Res> {
  __$$AuthorFollowImplCopyWithImpl(
      _$AuthorFollowImpl _value, $Res Function(_$AuthorFollowImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthorFollowImpl implements AuthorFollow {
  const _$AuthorFollowImpl();

  @override
  String toString() {
    return 'AuthorEvent.follow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorFollowImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) load,
    required TResult Function() follow,
    required TResult Function() unfollow,
    required TResult Function(bool followed) setFollowed,
  }) {
    return follow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? load,
    TResult? Function()? follow,
    TResult? Function()? unfollow,
    TResult? Function(bool followed)? setFollowed,
  }) {
    return follow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? load,
    TResult Function()? follow,
    TResult Function()? unfollow,
    TResult Function(bool followed)? setFollowed,
    required TResult orElse(),
  }) {
    if (follow != null) {
      return follow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoad value) load,
    required TResult Function(AuthorFollow value) follow,
    required TResult Function(AuthorUnfollow value) unfollow,
    required TResult Function(AuthorSetFollowed value) setFollowed,
  }) {
    return follow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorLoad value)? load,
    TResult? Function(AuthorFollow value)? follow,
    TResult? Function(AuthorUnfollow value)? unfollow,
    TResult? Function(AuthorSetFollowed value)? setFollowed,
  }) {
    return follow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoad value)? load,
    TResult Function(AuthorFollow value)? follow,
    TResult Function(AuthorUnfollow value)? unfollow,
    TResult Function(AuthorSetFollowed value)? setFollowed,
    required TResult orElse(),
  }) {
    if (follow != null) {
      return follow(this);
    }
    return orElse();
  }
}

abstract class AuthorFollow implements AuthorEvent {
  const factory AuthorFollow() = _$AuthorFollowImpl;
}

/// @nodoc
abstract class _$$AuthorUnfollowImplCopyWith<$Res> {
  factory _$$AuthorUnfollowImplCopyWith(_$AuthorUnfollowImpl value,
          $Res Function(_$AuthorUnfollowImpl) then) =
      __$$AuthorUnfollowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorUnfollowImplCopyWithImpl<$Res>
    extends _$AuthorEventCopyWithImpl<$Res, _$AuthorUnfollowImpl>
    implements _$$AuthorUnfollowImplCopyWith<$Res> {
  __$$AuthorUnfollowImplCopyWithImpl(
      _$AuthorUnfollowImpl _value, $Res Function(_$AuthorUnfollowImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthorUnfollowImpl implements AuthorUnfollow {
  const _$AuthorUnfollowImpl();

  @override
  String toString() {
    return 'AuthorEvent.unfollow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorUnfollowImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) load,
    required TResult Function() follow,
    required TResult Function() unfollow,
    required TResult Function(bool followed) setFollowed,
  }) {
    return unfollow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? load,
    TResult? Function()? follow,
    TResult? Function()? unfollow,
    TResult? Function(bool followed)? setFollowed,
  }) {
    return unfollow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? load,
    TResult Function()? follow,
    TResult Function()? unfollow,
    TResult Function(bool followed)? setFollowed,
    required TResult orElse(),
  }) {
    if (unfollow != null) {
      return unfollow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoad value) load,
    required TResult Function(AuthorFollow value) follow,
    required TResult Function(AuthorUnfollow value) unfollow,
    required TResult Function(AuthorSetFollowed value) setFollowed,
  }) {
    return unfollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorLoad value)? load,
    TResult? Function(AuthorFollow value)? follow,
    TResult? Function(AuthorUnfollow value)? unfollow,
    TResult? Function(AuthorSetFollowed value)? setFollowed,
  }) {
    return unfollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoad value)? load,
    TResult Function(AuthorFollow value)? follow,
    TResult Function(AuthorUnfollow value)? unfollow,
    TResult Function(AuthorSetFollowed value)? setFollowed,
    required TResult orElse(),
  }) {
    if (unfollow != null) {
      return unfollow(this);
    }
    return orElse();
  }
}

abstract class AuthorUnfollow implements AuthorEvent {
  const factory AuthorUnfollow() = _$AuthorUnfollowImpl;
}

/// @nodoc
abstract class _$$AuthorSetFollowedImplCopyWith<$Res> {
  factory _$$AuthorSetFollowedImplCopyWith(_$AuthorSetFollowedImpl value,
          $Res Function(_$AuthorSetFollowedImpl) then) =
      __$$AuthorSetFollowedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool followed});
}

/// @nodoc
class __$$AuthorSetFollowedImplCopyWithImpl<$Res>
    extends _$AuthorEventCopyWithImpl<$Res, _$AuthorSetFollowedImpl>
    implements _$$AuthorSetFollowedImplCopyWith<$Res> {
  __$$AuthorSetFollowedImplCopyWithImpl(_$AuthorSetFollowedImpl _value,
      $Res Function(_$AuthorSetFollowedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followed = null,
  }) {
    return _then(_$AuthorSetFollowedImpl(
      null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthorSetFollowedImpl implements AuthorSetFollowed {
  const _$AuthorSetFollowedImpl(this.followed);

  @override
  final bool followed;

  @override
  String toString() {
    return 'AuthorEvent.setFollowed(followed: $followed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorSetFollowedImpl &&
            (identical(other.followed, followed) ||
                other.followed == followed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorSetFollowedImplCopyWith<_$AuthorSetFollowedImpl> get copyWith =>
      __$$AuthorSetFollowedImplCopyWithImpl<_$AuthorSetFollowedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) load,
    required TResult Function() follow,
    required TResult Function() unfollow,
    required TResult Function(bool followed) setFollowed,
  }) {
    return setFollowed(followed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? load,
    TResult? Function()? follow,
    TResult? Function()? unfollow,
    TResult? Function(bool followed)? setFollowed,
  }) {
    return setFollowed?.call(followed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? load,
    TResult Function()? follow,
    TResult Function()? unfollow,
    TResult Function(bool followed)? setFollowed,
    required TResult orElse(),
  }) {
    if (setFollowed != null) {
      return setFollowed(followed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoad value) load,
    required TResult Function(AuthorFollow value) follow,
    required TResult Function(AuthorUnfollow value) unfollow,
    required TResult Function(AuthorSetFollowed value) setFollowed,
  }) {
    return setFollowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorLoad value)? load,
    TResult? Function(AuthorFollow value)? follow,
    TResult? Function(AuthorUnfollow value)? unfollow,
    TResult? Function(AuthorSetFollowed value)? setFollowed,
  }) {
    return setFollowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoad value)? load,
    TResult Function(AuthorFollow value)? follow,
    TResult Function(AuthorUnfollow value)? unfollow,
    TResult Function(AuthorSetFollowed value)? setFollowed,
    required TResult orElse(),
  }) {
    if (setFollowed != null) {
      return setFollowed(this);
    }
    return orElse();
  }
}

abstract class AuthorSetFollowed implements AuthorEvent {
  const factory AuthorSetFollowed(final bool followed) =
      _$AuthorSetFollowedImpl;

  bool get followed;
  @JsonKey(ignore: true)
  _$$AuthorSetFollowedImplCopyWith<_$AuthorSetFollowedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorState {
  UserProfileModel? get userProfile => throw _privateConstructorUsedError;
  bool get followed => throw _privateConstructorUsedError;
  bool get isMe => throw _privateConstructorUsedError;
  (Object, StackTrace)? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorStateCopyWith<AuthorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorStateCopyWith<$Res> {
  factory $AuthorStateCopyWith(
          AuthorState value, $Res Function(AuthorState) then) =
      _$AuthorStateCopyWithImpl<$Res, AuthorState>;
  @useResult
  $Res call(
      {UserProfileModel? userProfile,
      bool followed,
      bool isMe,
      (Object, StackTrace)? error});

  $UserProfileModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$AuthorStateCopyWithImpl<$Res, $Val extends AuthorState>
    implements $AuthorStateCopyWith<$Res> {
  _$AuthorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? followed = null,
    Object? isMe = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res>? get userProfile {
    if (_value.userProfile == null) {
      return null;
    }

    return $UserProfileModelCopyWith<$Res>(_value.userProfile!, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorStateImplCopyWith<$Res>
    implements $AuthorStateCopyWith<$Res> {
  factory _$$AuthorStateImplCopyWith(
          _$AuthorStateImpl value, $Res Function(_$AuthorStateImpl) then) =
      __$$AuthorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfileModel? userProfile,
      bool followed,
      bool isMe,
      (Object, StackTrace)? error});

  @override
  $UserProfileModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$$AuthorStateImplCopyWithImpl<$Res>
    extends _$AuthorStateCopyWithImpl<$Res, _$AuthorStateImpl>
    implements _$$AuthorStateImplCopyWith<$Res> {
  __$$AuthorStateImplCopyWithImpl(
      _$AuthorStateImpl _value, $Res Function(_$AuthorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? followed = null,
    Object? isMe = null,
    Object? error = freezed,
  }) {
    return _then(_$AuthorStateImpl(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
    ));
  }
}

/// @nodoc

class _$AuthorStateImpl implements _AuthorState {
  const _$AuthorStateImpl(
      {this.userProfile, this.followed = false, this.isMe = false, this.error});

  @override
  final UserProfileModel? userProfile;
  @override
  @JsonKey()
  final bool followed;
  @override
  @JsonKey()
  final bool isMe;
  @override
  final (Object, StackTrace)? error;

  @override
  String toString() {
    return 'AuthorState(userProfile: $userProfile, followed: $followed, isMe: $isMe, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorStateImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.followed, followed) ||
                other.followed == followed) &&
            (identical(other.isMe, isMe) || other.isMe == isMe) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userProfile, followed, isMe, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorStateImplCopyWith<_$AuthorStateImpl> get copyWith =>
      __$$AuthorStateImplCopyWithImpl<_$AuthorStateImpl>(this, _$identity);
}

abstract class _AuthorState implements AuthorState {
  const factory _AuthorState(
      {final UserProfileModel? userProfile,
      final bool followed,
      final bool isMe,
      final (Object, StackTrace)? error}) = _$AuthorStateImpl;

  @override
  UserProfileModel? get userProfile;
  @override
  bool get followed;
  @override
  bool get isMe;
  @override
  (Object, StackTrace)? get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthorStateImplCopyWith<_$AuthorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
