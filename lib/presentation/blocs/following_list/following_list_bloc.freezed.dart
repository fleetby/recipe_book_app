// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'following_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FollowingListEvent {
  String? get followerId => throw _privateConstructorUsedError;
  bool get invalidateCache => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? followerId, bool invalidateCache) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? followerId, bool invalidateCache)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? followerId, bool invalidateCache)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FollowingListLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FollowingListLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FollowingListLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowingListEventCopyWith<FollowingListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingListEventCopyWith<$Res> {
  factory $FollowingListEventCopyWith(
          FollowingListEvent value, $Res Function(FollowingListEvent) then) =
      _$FollowingListEventCopyWithImpl<$Res, FollowingListEvent>;
  @useResult
  $Res call({String? followerId, bool invalidateCache});
}

/// @nodoc
class _$FollowingListEventCopyWithImpl<$Res, $Val extends FollowingListEvent>
    implements $FollowingListEventCopyWith<$Res> {
  _$FollowingListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerId = freezed,
    Object? invalidateCache = null,
  }) {
    return _then(_value.copyWith(
      followerId: freezed == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidateCache: null == invalidateCache
          ? _value.invalidateCache
          : invalidateCache // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowingListLoadImplCopyWith<$Res>
    implements $FollowingListEventCopyWith<$Res> {
  factory _$$FollowingListLoadImplCopyWith(_$FollowingListLoadImpl value,
          $Res Function(_$FollowingListLoadImpl) then) =
      __$$FollowingListLoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? followerId, bool invalidateCache});
}

/// @nodoc
class __$$FollowingListLoadImplCopyWithImpl<$Res>
    extends _$FollowingListEventCopyWithImpl<$Res, _$FollowingListLoadImpl>
    implements _$$FollowingListLoadImplCopyWith<$Res> {
  __$$FollowingListLoadImplCopyWithImpl(_$FollowingListLoadImpl _value,
      $Res Function(_$FollowingListLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerId = freezed,
    Object? invalidateCache = null,
  }) {
    return _then(_$FollowingListLoadImpl(
      followerId: freezed == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidateCache: null == invalidateCache
          ? _value.invalidateCache
          : invalidateCache // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FollowingListLoadImpl implements FollowingListLoad {
  const _$FollowingListLoadImpl(
      {this.followerId, this.invalidateCache = false});

  @override
  final String? followerId;
  @override
  @JsonKey()
  final bool invalidateCache;

  @override
  String toString() {
    return 'FollowingListEvent.load(followerId: $followerId, invalidateCache: $invalidateCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowingListLoadImpl &&
            (identical(other.followerId, followerId) ||
                other.followerId == followerId) &&
            (identical(other.invalidateCache, invalidateCache) ||
                other.invalidateCache == invalidateCache));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followerId, invalidateCache);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowingListLoadImplCopyWith<_$FollowingListLoadImpl> get copyWith =>
      __$$FollowingListLoadImplCopyWithImpl<_$FollowingListLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? followerId, bool invalidateCache) load,
  }) {
    return load(followerId, invalidateCache);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? followerId, bool invalidateCache)? load,
  }) {
    return load?.call(followerId, invalidateCache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? followerId, bool invalidateCache)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(followerId, invalidateCache);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FollowingListLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FollowingListLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FollowingListLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class FollowingListLoad implements FollowingListEvent {
  const factory FollowingListLoad(
      {final String? followerId,
      final bool invalidateCache}) = _$FollowingListLoadImpl;

  @override
  String? get followerId;
  @override
  bool get invalidateCache;
  @override
  @JsonKey(ignore: true)
  _$$FollowingListLoadImplCopyWith<_$FollowingListLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FollowingListState {
  List<UserProfileModel> get followingList =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  (Object, StackTrace)? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowingListStateCopyWith<FollowingListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingListStateCopyWith<$Res> {
  factory $FollowingListStateCopyWith(
          FollowingListState value, $Res Function(FollowingListState) then) =
      _$FollowingListStateCopyWithImpl<$Res, FollowingListState>;
  @useResult
  $Res call(
      {List<UserProfileModel> followingList,
      bool loading,
      (Object, StackTrace)? error});
}

/// @nodoc
class _$FollowingListStateCopyWithImpl<$Res, $Val extends FollowingListState>
    implements $FollowingListStateCopyWith<$Res> {
  _$FollowingListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followingList = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      followingList: null == followingList
          ? _value.followingList
          : followingList // ignore: cast_nullable_to_non_nullable
              as List<UserProfileModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowingListStateImplCopyWith<$Res>
    implements $FollowingListStateCopyWith<$Res> {
  factory _$$FollowingListStateImplCopyWith(_$FollowingListStateImpl value,
          $Res Function(_$FollowingListStateImpl) then) =
      __$$FollowingListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserProfileModel> followingList,
      bool loading,
      (Object, StackTrace)? error});
}

/// @nodoc
class __$$FollowingListStateImplCopyWithImpl<$Res>
    extends _$FollowingListStateCopyWithImpl<$Res, _$FollowingListStateImpl>
    implements _$$FollowingListStateImplCopyWith<$Res> {
  __$$FollowingListStateImplCopyWithImpl(_$FollowingListStateImpl _value,
      $Res Function(_$FollowingListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followingList = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$FollowingListStateImpl(
      followingList: null == followingList
          ? _value._followingList
          : followingList // ignore: cast_nullable_to_non_nullable
              as List<UserProfileModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
    ));
  }
}

/// @nodoc

class _$FollowingListStateImpl implements _FollowingListState {
  const _$FollowingListStateImpl(
      {final List<UserProfileModel> followingList = const [],
      this.loading = false,
      this.error})
      : _followingList = followingList;

  final List<UserProfileModel> _followingList;
  @override
  @JsonKey()
  List<UserProfileModel> get followingList {
    if (_followingList is EqualUnmodifiableListView) return _followingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followingList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  final (Object, StackTrace)? error;

  @override
  String toString() {
    return 'FollowingListState(followingList: $followingList, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowingListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._followingList, _followingList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_followingList), loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowingListStateImplCopyWith<_$FollowingListStateImpl> get copyWith =>
      __$$FollowingListStateImplCopyWithImpl<_$FollowingListStateImpl>(
          this, _$identity);
}

abstract class _FollowingListState implements FollowingListState {
  const factory _FollowingListState(
      {final List<UserProfileModel> followingList,
      final bool loading,
      final (Object, StackTrace)? error}) = _$FollowingListStateImpl;

  @override
  List<UserProfileModel> get followingList;
  @override
  bool get loading;
  @override
  (Object, StackTrace)? get error;
  @override
  @JsonKey(ignore: true)
  _$$FollowingListStateImplCopyWith<_$FollowingListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
