// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountLoadImplCopyWith<$Res> {
  factory _$$AccountLoadImplCopyWith(
          _$AccountLoadImpl value, $Res Function(_$AccountLoadImpl) then) =
      __$$AccountLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLoadImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AccountLoadImpl>
    implements _$$AccountLoadImplCopyWith<$Res> {
  __$$AccountLoadImplCopyWithImpl(
      _$AccountLoadImpl _value, $Res Function(_$AccountLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLoadImpl implements AccountLoad {
  const _$AccountLoadImpl();

  @override
  String toString() {
    return 'AccountEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AccountLoad implements AccountEvent {
  const factory AccountLoad() = _$AccountLoadImpl;
}

/// @nodoc
mixin _$AccountState {
  UserProfileModel? get userProfile => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;
  (Object, StackTrace)? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {UserProfileModel? userProfile,
      String? userEmail,
      (Object, StackTrace)? error,
      bool loading});

  $UserProfileModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? userEmail = freezed,
    Object? error = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfileModel? userProfile,
      String? userEmail,
      (Object, StackTrace)? error,
      bool loading});

  @override
  $UserProfileModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? userEmail = freezed,
    Object? error = freezed,
    Object? loading = null,
  }) {
    return _then(_$AccountStateImpl(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl(
      {this.userProfile, this.userEmail, this.error, this.loading = false});

  @override
  final UserProfileModel? userProfile;
  @override
  final String? userEmail;
  @override
  final (Object, StackTrace)? error;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'AccountState(userProfile: $userProfile, userEmail: $userEmail, error: $error, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userProfile, userEmail, error, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final UserProfileModel? userProfile,
      final String? userEmail,
      final (Object, StackTrace)? error,
      final bool loading}) = _$AccountStateImpl;

  @override
  UserProfileModel? get userProfile;
  @override
  String? get userEmail;
  @override
  (Object, StackTrace)? get error;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
