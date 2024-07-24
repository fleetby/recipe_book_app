// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function(bool isAuthenticated) setIsAuthenticated,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function(bool isAuthenticated)? setIsAuthenticated,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function(bool isAuthenticated)? setIsAuthenticated,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationPreload value) preload,
    required TResult Function(AuthenticationSetIsAuthenticated value)
        setIsAuthenticated,
    required TResult Function(AuthenticationSignIn value) signIn,
    required TResult Function(AuthenticationSignUp value) signUp,
    required TResult Function(AuthenticationSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationPreload value)? preload,
    TResult? Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult? Function(AuthenticationSignIn value)? signIn,
    TResult? Function(AuthenticationSignUp value)? signUp,
    TResult? Function(AuthenticationSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationPreload value)? preload,
    TResult Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult Function(AuthenticationSignIn value)? signIn,
    TResult Function(AuthenticationSignUp value)? signUp,
    TResult Function(AuthenticationSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationPreloadImplCopyWith<$Res> {
  factory _$$AuthenticationPreloadImplCopyWith(
          _$AuthenticationPreloadImpl value,
          $Res Function(_$AuthenticationPreloadImpl) then) =
      __$$AuthenticationPreloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationPreloadImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticationPreloadImpl>
    implements _$$AuthenticationPreloadImplCopyWith<$Res> {
  __$$AuthenticationPreloadImplCopyWithImpl(_$AuthenticationPreloadImpl _value,
      $Res Function(_$AuthenticationPreloadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationPreloadImpl implements AuthenticationPreload {
  const _$AuthenticationPreloadImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.preload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationPreloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function(bool isAuthenticated) setIsAuthenticated,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
  }) {
    return preload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function(bool isAuthenticated)? setIsAuthenticated,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
  }) {
    return preload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function(bool isAuthenticated)? setIsAuthenticated,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (preload != null) {
      return preload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationPreload value) preload,
    required TResult Function(AuthenticationSetIsAuthenticated value)
        setIsAuthenticated,
    required TResult Function(AuthenticationSignIn value) signIn,
    required TResult Function(AuthenticationSignUp value) signUp,
    required TResult Function(AuthenticationSignOut value) signOut,
  }) {
    return preload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationPreload value)? preload,
    TResult? Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult? Function(AuthenticationSignIn value)? signIn,
    TResult? Function(AuthenticationSignUp value)? signUp,
    TResult? Function(AuthenticationSignOut value)? signOut,
  }) {
    return preload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationPreload value)? preload,
    TResult Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult Function(AuthenticationSignIn value)? signIn,
    TResult Function(AuthenticationSignUp value)? signUp,
    TResult Function(AuthenticationSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (preload != null) {
      return preload(this);
    }
    return orElse();
  }
}

abstract class AuthenticationPreload implements AuthenticationEvent {
  const factory AuthenticationPreload() = _$AuthenticationPreloadImpl;
}

/// @nodoc
abstract class _$$AuthenticationSetIsAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticationSetIsAuthenticatedImplCopyWith(
          _$AuthenticationSetIsAuthenticatedImpl value,
          $Res Function(_$AuthenticationSetIsAuthenticatedImpl) then) =
      __$$AuthenticationSetIsAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuthenticated});
}

/// @nodoc
class __$$AuthenticationSetIsAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationSetIsAuthenticatedImpl>
    implements _$$AuthenticationSetIsAuthenticatedImplCopyWith<$Res> {
  __$$AuthenticationSetIsAuthenticatedImplCopyWithImpl(
      _$AuthenticationSetIsAuthenticatedImpl _value,
      $Res Function(_$AuthenticationSetIsAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
  }) {
    return _then(_$AuthenticationSetIsAuthenticatedImpl(
      null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthenticationSetIsAuthenticatedImpl
    implements AuthenticationSetIsAuthenticated {
  const _$AuthenticationSetIsAuthenticatedImpl(this.isAuthenticated);

  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'AuthenticationEvent.setIsAuthenticated(isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSetIsAuthenticatedImpl &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSetIsAuthenticatedImplCopyWith<
          _$AuthenticationSetIsAuthenticatedImpl>
      get copyWith => __$$AuthenticationSetIsAuthenticatedImplCopyWithImpl<
          _$AuthenticationSetIsAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function(bool isAuthenticated) setIsAuthenticated,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
  }) {
    return setIsAuthenticated(isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function(bool isAuthenticated)? setIsAuthenticated,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
  }) {
    return setIsAuthenticated?.call(isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function(bool isAuthenticated)? setIsAuthenticated,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (setIsAuthenticated != null) {
      return setIsAuthenticated(isAuthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationPreload value) preload,
    required TResult Function(AuthenticationSetIsAuthenticated value)
        setIsAuthenticated,
    required TResult Function(AuthenticationSignIn value) signIn,
    required TResult Function(AuthenticationSignUp value) signUp,
    required TResult Function(AuthenticationSignOut value) signOut,
  }) {
    return setIsAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationPreload value)? preload,
    TResult? Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult? Function(AuthenticationSignIn value)? signIn,
    TResult? Function(AuthenticationSignUp value)? signUp,
    TResult? Function(AuthenticationSignOut value)? signOut,
  }) {
    return setIsAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationPreload value)? preload,
    TResult Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult Function(AuthenticationSignIn value)? signIn,
    TResult Function(AuthenticationSignUp value)? signUp,
    TResult Function(AuthenticationSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (setIsAuthenticated != null) {
      return setIsAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSetIsAuthenticated implements AuthenticationEvent {
  const factory AuthenticationSetIsAuthenticated(final bool isAuthenticated) =
      _$AuthenticationSetIsAuthenticatedImpl;

  bool get isAuthenticated;
  @JsonKey(ignore: true)
  _$$AuthenticationSetIsAuthenticatedImplCopyWith<
          _$AuthenticationSetIsAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignInImplCopyWith<$Res> {
  factory _$$AuthenticationSignInImplCopyWith(_$AuthenticationSignInImpl value,
          $Res Function(_$AuthenticationSignInImpl) then) =
      __$$AuthenticationSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthenticationSignInImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticationSignInImpl>
    implements _$$AuthenticationSignInImplCopyWith<$Res> {
  __$$AuthenticationSignInImplCopyWithImpl(_$AuthenticationSignInImpl _value,
      $Res Function(_$AuthenticationSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthenticationSignInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationSignInImpl implements AuthenticationSignIn {
  const _$AuthenticationSignInImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignInImplCopyWith<_$AuthenticationSignInImpl>
      get copyWith =>
          __$$AuthenticationSignInImplCopyWithImpl<_$AuthenticationSignInImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function(bool isAuthenticated) setIsAuthenticated,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function(bool isAuthenticated)? setIsAuthenticated,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function(bool isAuthenticated)? setIsAuthenticated,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationPreload value) preload,
    required TResult Function(AuthenticationSetIsAuthenticated value)
        setIsAuthenticated,
    required TResult Function(AuthenticationSignIn value) signIn,
    required TResult Function(AuthenticationSignUp value) signUp,
    required TResult Function(AuthenticationSignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationPreload value)? preload,
    TResult? Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult? Function(AuthenticationSignIn value)? signIn,
    TResult? Function(AuthenticationSignUp value)? signUp,
    TResult? Function(AuthenticationSignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationPreload value)? preload,
    TResult Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult Function(AuthenticationSignIn value)? signIn,
    TResult Function(AuthenticationSignUp value)? signUp,
    TResult Function(AuthenticationSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSignIn implements AuthenticationEvent {
  const factory AuthenticationSignIn(
      {required final String email,
      required final String password}) = _$AuthenticationSignInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthenticationSignInImplCopyWith<_$AuthenticationSignInImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignUpImplCopyWith<$Res> {
  factory _$$AuthenticationSignUpImplCopyWith(_$AuthenticationSignUpImpl value,
          $Res Function(_$AuthenticationSignUpImpl) then) =
      __$$AuthenticationSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthenticationSignUpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticationSignUpImpl>
    implements _$$AuthenticationSignUpImplCopyWith<$Res> {
  __$$AuthenticationSignUpImplCopyWithImpl(_$AuthenticationSignUpImpl _value,
      $Res Function(_$AuthenticationSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthenticationSignUpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationSignUpImpl implements AuthenticationSignUp {
  const _$AuthenticationSignUpImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignUpImplCopyWith<_$AuthenticationSignUpImpl>
      get copyWith =>
          __$$AuthenticationSignUpImplCopyWithImpl<_$AuthenticationSignUpImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function(bool isAuthenticated) setIsAuthenticated,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
  }) {
    return signUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function(bool isAuthenticated)? setIsAuthenticated,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
  }) {
    return signUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function(bool isAuthenticated)? setIsAuthenticated,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationPreload value) preload,
    required TResult Function(AuthenticationSetIsAuthenticated value)
        setIsAuthenticated,
    required TResult Function(AuthenticationSignIn value) signIn,
    required TResult Function(AuthenticationSignUp value) signUp,
    required TResult Function(AuthenticationSignOut value) signOut,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationPreload value)? preload,
    TResult? Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult? Function(AuthenticationSignIn value)? signIn,
    TResult? Function(AuthenticationSignUp value)? signUp,
    TResult? Function(AuthenticationSignOut value)? signOut,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationPreload value)? preload,
    TResult Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult Function(AuthenticationSignIn value)? signIn,
    TResult Function(AuthenticationSignUp value)? signUp,
    TResult Function(AuthenticationSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSignUp implements AuthenticationEvent {
  const factory AuthenticationSignUp(
      {required final String email,
      required final String password}) = _$AuthenticationSignUpImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthenticationSignUpImplCopyWith<_$AuthenticationSignUpImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignOutImplCopyWith<$Res> {
  factory _$$AuthenticationSignOutImplCopyWith(
          _$AuthenticationSignOutImpl value,
          $Res Function(_$AuthenticationSignOutImpl) then) =
      __$$AuthenticationSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationSignOutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticationSignOutImpl>
    implements _$$AuthenticationSignOutImplCopyWith<$Res> {
  __$$AuthenticationSignOutImplCopyWithImpl(_$AuthenticationSignOutImpl _value,
      $Res Function(_$AuthenticationSignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationSignOutImpl implements AuthenticationSignOut {
  const _$AuthenticationSignOutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function(bool isAuthenticated) setIsAuthenticated,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function(bool isAuthenticated)? setIsAuthenticated,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function(bool isAuthenticated)? setIsAuthenticated,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationPreload value) preload,
    required TResult Function(AuthenticationSetIsAuthenticated value)
        setIsAuthenticated,
    required TResult Function(AuthenticationSignIn value) signIn,
    required TResult Function(AuthenticationSignUp value) signUp,
    required TResult Function(AuthenticationSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationPreload value)? preload,
    TResult? Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult? Function(AuthenticationSignIn value)? signIn,
    TResult? Function(AuthenticationSignUp value)? signUp,
    TResult? Function(AuthenticationSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationPreload value)? preload,
    TResult Function(AuthenticationSetIsAuthenticated value)?
        setIsAuthenticated,
    TResult Function(AuthenticationSignIn value)? signIn,
    TResult Function(AuthenticationSignUp value)? signUp,
    TResult Function(AuthenticationSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSignOut implements AuthenticationEvent {
  const factory AuthenticationSignOut() = _$AuthenticationSignOutImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() signedIn,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? signedIn,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? signedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationSignedIn value) signedIn,
    required TResult Function(AuthenticationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationSignedIn value)? signedIn,
    TResult? Function(AuthenticationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationSignedIn value)? signedIn,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationInitialImplCopyWith<$Res> {
  factory _$$AuthenticationInitialImplCopyWith(
          _$AuthenticationInitialImpl value,
          $Res Function(_$AuthenticationInitialImpl) then) =
      __$$AuthenticationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationInitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationInitialImpl>
    implements _$$AuthenticationInitialImplCopyWith<$Res> {
  __$$AuthenticationInitialImplCopyWithImpl(_$AuthenticationInitialImpl _value,
      $Res Function(_$AuthenticationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationInitialImpl implements AuthenticationInitial {
  const _$AuthenticationInitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() signedIn,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? signedIn,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? signedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationSignedIn value) signedIn,
    required TResult Function(AuthenticationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationSignedIn value)? signedIn,
    TResult? Function(AuthenticationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationSignedIn value)? signedIn,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthenticationInitial implements AuthenticationState {
  const factory AuthenticationInitial() = _$AuthenticationInitialImpl;
}

/// @nodoc
abstract class _$$AuthenticationLoadingImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingImplCopyWith(
          _$AuthenticationLoadingImpl value,
          $Res Function(_$AuthenticationLoadingImpl) then) =
      __$$AuthenticationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationLoadingImpl>
    implements _$$AuthenticationLoadingImplCopyWith<$Res> {
  __$$AuthenticationLoadingImplCopyWithImpl(_$AuthenticationLoadingImpl _value,
      $Res Function(_$AuthenticationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationLoadingImpl implements AuthenticationLoading {
  const _$AuthenticationLoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() signedIn,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? signedIn,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? signedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationSignedIn value) signedIn,
    required TResult Function(AuthenticationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationSignedIn value)? signedIn,
    TResult? Function(AuthenticationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationSignedIn value)? signedIn,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLoading implements AuthenticationState {
  const factory AuthenticationLoading() = _$AuthenticationLoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticationSignedInImplCopyWith<$Res> {
  factory _$$AuthenticationSignedInImplCopyWith(
          _$AuthenticationSignedInImpl value,
          $Res Function(_$AuthenticationSignedInImpl) then) =
      __$$AuthenticationSignedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationSignedInImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationSignedInImpl>
    implements _$$AuthenticationSignedInImplCopyWith<$Res> {
  __$$AuthenticationSignedInImplCopyWithImpl(
      _$AuthenticationSignedInImpl _value,
      $Res Function(_$AuthenticationSignedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationSignedInImpl implements AuthenticationSignedIn {
  const _$AuthenticationSignedInImpl();

  @override
  String toString() {
    return 'AuthenticationState.signedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() signedIn,
    required TResult Function() error,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? signedIn,
    TResult? Function()? error,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? signedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationSignedIn value) signedIn,
    required TResult Function(AuthenticationError value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationSignedIn value)? signedIn,
    TResult? Function(AuthenticationError value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationSignedIn value)? signedIn,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSignedIn implements AuthenticationState {
  const factory AuthenticationSignedIn() = _$AuthenticationSignedInImpl;
}

/// @nodoc
abstract class _$$AuthenticationErrorImplCopyWith<$Res> {
  factory _$$AuthenticationErrorImplCopyWith(_$AuthenticationErrorImpl value,
          $Res Function(_$AuthenticationErrorImpl) then) =
      __$$AuthenticationErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationErrorImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationErrorImpl>
    implements _$$AuthenticationErrorImplCopyWith<$Res> {
  __$$AuthenticationErrorImplCopyWithImpl(_$AuthenticationErrorImpl _value,
      $Res Function(_$AuthenticationErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationErrorImpl implements AuthenticationError {
  const _$AuthenticationErrorImpl();

  @override
  String toString() {
    return 'AuthenticationState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() signedIn,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? signedIn,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? signedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationSignedIn value) signedIn,
    required TResult Function(AuthenticationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationSignedIn value)? signedIn,
    TResult? Function(AuthenticationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationSignedIn value)? signedIn,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthenticationError implements AuthenticationState {
  const factory AuthenticationError() = _$AuthenticationErrorImpl;
}
