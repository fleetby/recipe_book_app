// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name, File? newAvatar, bool deleteAvatar)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name, File? newAvatar, bool deleteAvatar)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name, File? newAvatar, bool deleteAvatar)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileLoad value) load,
    required TResult Function(EditProfileSubmit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileLoad value)? load,
    TResult? Function(EditProfileSubmit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileLoad value)? load,
    TResult Function(EditProfileSubmit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditProfileLoadImplCopyWith<$Res> {
  factory _$$EditProfileLoadImplCopyWith(_$EditProfileLoadImpl value,
          $Res Function(_$EditProfileLoadImpl) then) =
      __$$EditProfileLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileLoadImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileLoadImpl>
    implements _$$EditProfileLoadImplCopyWith<$Res> {
  __$$EditProfileLoadImplCopyWithImpl(
      _$EditProfileLoadImpl _value, $Res Function(_$EditProfileLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileLoadImpl implements EditProfileLoad {
  const _$EditProfileLoadImpl();

  @override
  String toString() {
    return 'EditProfileEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProfileLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name, File? newAvatar, bool deleteAvatar)
        submit,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name, File? newAvatar, bool deleteAvatar)? submit,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name, File? newAvatar, bool deleteAvatar)? submit,
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
    required TResult Function(EditProfileLoad value) load,
    required TResult Function(EditProfileSubmit value) submit,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileLoad value)? load,
    TResult? Function(EditProfileSubmit value)? submit,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileLoad value)? load,
    TResult Function(EditProfileSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoad implements EditProfileEvent {
  const factory EditProfileLoad() = _$EditProfileLoadImpl;
}

/// @nodoc
abstract class _$$EditProfileSubmitImplCopyWith<$Res> {
  factory _$$EditProfileSubmitImplCopyWith(_$EditProfileSubmitImpl value,
          $Res Function(_$EditProfileSubmitImpl) then) =
      __$$EditProfileSubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, File? newAvatar, bool deleteAvatar});
}

/// @nodoc
class __$$EditProfileSubmitImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileSubmitImpl>
    implements _$$EditProfileSubmitImplCopyWith<$Res> {
  __$$EditProfileSubmitImplCopyWithImpl(_$EditProfileSubmitImpl _value,
      $Res Function(_$EditProfileSubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? newAvatar = freezed,
    Object? deleteAvatar = null,
  }) {
    return _then(_$EditProfileSubmitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      newAvatar: freezed == newAvatar
          ? _value.newAvatar
          : newAvatar // ignore: cast_nullable_to_non_nullable
              as File?,
      deleteAvatar: null == deleteAvatar
          ? _value.deleteAvatar
          : deleteAvatar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditProfileSubmitImpl implements EditProfileSubmit {
  const _$EditProfileSubmitImpl(
      {required this.name, this.newAvatar, this.deleteAvatar = false});

  @override
  final String name;
  @override
  final File? newAvatar;
  @override
  @JsonKey()
  final bool deleteAvatar;

  @override
  String toString() {
    return 'EditProfileEvent.submit(name: $name, newAvatar: $newAvatar, deleteAvatar: $deleteAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileSubmitImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.newAvatar, newAvatar) ||
                other.newAvatar == newAvatar) &&
            (identical(other.deleteAvatar, deleteAvatar) ||
                other.deleteAvatar == deleteAvatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, newAvatar, deleteAvatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileSubmitImplCopyWith<_$EditProfileSubmitImpl> get copyWith =>
      __$$EditProfileSubmitImplCopyWithImpl<_$EditProfileSubmitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name, File? newAvatar, bool deleteAvatar)
        submit,
  }) {
    return submit(name, newAvatar, deleteAvatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name, File? newAvatar, bool deleteAvatar)? submit,
  }) {
    return submit?.call(name, newAvatar, deleteAvatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name, File? newAvatar, bool deleteAvatar)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(name, newAvatar, deleteAvatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileLoad value) load,
    required TResult Function(EditProfileSubmit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileLoad value)? load,
    TResult? Function(EditProfileSubmit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileLoad value)? load,
    TResult Function(EditProfileSubmit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class EditProfileSubmit implements EditProfileEvent {
  const factory EditProfileSubmit(
      {required final String name,
      final File? newAvatar,
      final bool deleteAvatar}) = _$EditProfileSubmitImpl;

  String get name;
  File? get newAvatar;
  bool get deleteAvatar;
  @JsonKey(ignore: true)
  _$$EditProfileSubmitImplCopyWith<_$EditProfileSubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProfileState {
  UserProfileModel? get userProfile => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  (Exception, StackTrace)? get error => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call(
      {UserProfileModel? userProfile,
      bool loading,
      (Exception, StackTrace)? error,
      bool success});

  $UserProfileModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? loading = null,
    Object? error = freezed,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Exception, StackTrace)?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EditProfileStateImplCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateImplCopyWith(_$EditProfileStateImpl value,
          $Res Function(_$EditProfileStateImpl) then) =
      __$$EditProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserProfileModel? userProfile,
      bool loading,
      (Exception, StackTrace)? error,
      bool success});

  @override
  $UserProfileModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$$EditProfileStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateImpl>
    implements _$$EditProfileStateImplCopyWith<$Res> {
  __$$EditProfileStateImplCopyWithImpl(_$EditProfileStateImpl _value,
      $Res Function(_$EditProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? loading = null,
    Object? error = freezed,
    Object? success = null,
  }) {
    return _then(_$EditProfileStateImpl(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Exception, StackTrace)?,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditProfileStateImpl implements _EditProfileState {
  const _$EditProfileStateImpl(
      {this.userProfile,
      this.loading = false,
      this.error,
      this.success = false});

  @override
  final UserProfileModel? userProfile;
  @override
  @JsonKey()
  final bool loading;
  @override
  final (Exception, StackTrace)? error;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'EditProfileState(userProfile: $userProfile, loading: $loading, error: $error, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userProfile, loading, error, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      __$$EditProfileStateImplCopyWithImpl<_$EditProfileStateImpl>(
          this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {final UserProfileModel? userProfile,
      final bool loading,
      final (Exception, StackTrace)? error,
      final bool success}) = _$EditProfileStateImpl;

  @override
  UserProfileModel? get userProfile;
  @override
  bool get loading;
  @override
  (Exception, StackTrace)? get error;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
