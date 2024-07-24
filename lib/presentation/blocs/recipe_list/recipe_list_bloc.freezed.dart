// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeListParams params) load,
    required TResult Function() reload,
    required TResult Function() loadMore,
    required TResult Function(int id) deleted,
    required TResult Function(int id) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeListParams params)? load,
    TResult? Function()? reload,
    TResult? Function()? loadMore,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeListParams params)? load,
    TResult Function()? reload,
    TResult Function()? loadMore,
    TResult Function(int id)? deleted,
    TResult Function(int id)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListLoad value) load,
    required TResult Function(RecipeListReload value) reload,
    required TResult Function(RecipeListLoadMore value) loadMore,
    required TResult Function(RecipeListDeleted value) deleted,
    required TResult Function(RecipeListChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListLoad value)? load,
    TResult? Function(RecipeListReload value)? reload,
    TResult? Function(RecipeListLoadMore value)? loadMore,
    TResult? Function(RecipeListDeleted value)? deleted,
    TResult? Function(RecipeListChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListLoad value)? load,
    TResult Function(RecipeListReload value)? reload,
    TResult Function(RecipeListLoadMore value)? loadMore,
    TResult Function(RecipeListDeleted value)? deleted,
    TResult Function(RecipeListChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListEventCopyWith<$Res> {
  factory $RecipeListEventCopyWith(
          RecipeListEvent value, $Res Function(RecipeListEvent) then) =
      _$RecipeListEventCopyWithImpl<$Res, RecipeListEvent>;
}

/// @nodoc
class _$RecipeListEventCopyWithImpl<$Res, $Val extends RecipeListEvent>
    implements $RecipeListEventCopyWith<$Res> {
  _$RecipeListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipeListLoadImplCopyWith<$Res> {
  factory _$$RecipeListLoadImplCopyWith(_$RecipeListLoadImpl value,
          $Res Function(_$RecipeListLoadImpl) then) =
      __$$RecipeListLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeListParams params});

  $RecipeListParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$RecipeListLoadImplCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$RecipeListLoadImpl>
    implements _$$RecipeListLoadImplCopyWith<$Res> {
  __$$RecipeListLoadImplCopyWithImpl(
      _$RecipeListLoadImpl _value, $Res Function(_$RecipeListLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$RecipeListLoadImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RecipeListParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeListParamsCopyWith<$Res> get params {
    return $RecipeListParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$RecipeListLoadImpl implements RecipeListLoad {
  const _$RecipeListLoadImpl({this.params = const RecipeListParams()});

  @override
  @JsonKey()
  final RecipeListParams params;

  @override
  String toString() {
    return 'RecipeListEvent.load(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListLoadImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListLoadImplCopyWith<_$RecipeListLoadImpl> get copyWith =>
      __$$RecipeListLoadImplCopyWithImpl<_$RecipeListLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeListParams params) load,
    required TResult Function() reload,
    required TResult Function() loadMore,
    required TResult Function(int id) deleted,
    required TResult Function(int id) changed,
  }) {
    return load(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeListParams params)? load,
    TResult? Function()? reload,
    TResult? Function()? loadMore,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? changed,
  }) {
    return load?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeListParams params)? load,
    TResult Function()? reload,
    TResult Function()? loadMore,
    TResult Function(int id)? deleted,
    TResult Function(int id)? changed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListLoad value) load,
    required TResult Function(RecipeListReload value) reload,
    required TResult Function(RecipeListLoadMore value) loadMore,
    required TResult Function(RecipeListDeleted value) deleted,
    required TResult Function(RecipeListChanged value) changed,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListLoad value)? load,
    TResult? Function(RecipeListReload value)? reload,
    TResult? Function(RecipeListLoadMore value)? loadMore,
    TResult? Function(RecipeListDeleted value)? deleted,
    TResult? Function(RecipeListChanged value)? changed,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListLoad value)? load,
    TResult Function(RecipeListReload value)? reload,
    TResult Function(RecipeListLoadMore value)? loadMore,
    TResult Function(RecipeListDeleted value)? deleted,
    TResult Function(RecipeListChanged value)? changed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class RecipeListLoad implements RecipeListEvent {
  const factory RecipeListLoad({final RecipeListParams params}) =
      _$RecipeListLoadImpl;

  RecipeListParams get params;
  @JsonKey(ignore: true)
  _$$RecipeListLoadImplCopyWith<_$RecipeListLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeListReloadImplCopyWith<$Res> {
  factory _$$RecipeListReloadImplCopyWith(_$RecipeListReloadImpl value,
          $Res Function(_$RecipeListReloadImpl) then) =
      __$$RecipeListReloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeListReloadImplCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$RecipeListReloadImpl>
    implements _$$RecipeListReloadImplCopyWith<$Res> {
  __$$RecipeListReloadImplCopyWithImpl(_$RecipeListReloadImpl _value,
      $Res Function(_$RecipeListReloadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeListReloadImpl implements RecipeListReload {
  const _$RecipeListReloadImpl();

  @override
  String toString() {
    return 'RecipeListEvent.reload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeListReloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeListParams params) load,
    required TResult Function() reload,
    required TResult Function() loadMore,
    required TResult Function(int id) deleted,
    required TResult Function(int id) changed,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeListParams params)? load,
    TResult? Function()? reload,
    TResult? Function()? loadMore,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? changed,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeListParams params)? load,
    TResult Function()? reload,
    TResult Function()? loadMore,
    TResult Function(int id)? deleted,
    TResult Function(int id)? changed,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListLoad value) load,
    required TResult Function(RecipeListReload value) reload,
    required TResult Function(RecipeListLoadMore value) loadMore,
    required TResult Function(RecipeListDeleted value) deleted,
    required TResult Function(RecipeListChanged value) changed,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListLoad value)? load,
    TResult? Function(RecipeListReload value)? reload,
    TResult? Function(RecipeListLoadMore value)? loadMore,
    TResult? Function(RecipeListDeleted value)? deleted,
    TResult? Function(RecipeListChanged value)? changed,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListLoad value)? load,
    TResult Function(RecipeListReload value)? reload,
    TResult Function(RecipeListLoadMore value)? loadMore,
    TResult Function(RecipeListDeleted value)? deleted,
    TResult Function(RecipeListChanged value)? changed,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class RecipeListReload implements RecipeListEvent {
  const factory RecipeListReload() = _$RecipeListReloadImpl;
}

/// @nodoc
abstract class _$$RecipeListLoadMoreImplCopyWith<$Res> {
  factory _$$RecipeListLoadMoreImplCopyWith(_$RecipeListLoadMoreImpl value,
          $Res Function(_$RecipeListLoadMoreImpl) then) =
      __$$RecipeListLoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeListLoadMoreImplCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$RecipeListLoadMoreImpl>
    implements _$$RecipeListLoadMoreImplCopyWith<$Res> {
  __$$RecipeListLoadMoreImplCopyWithImpl(_$RecipeListLoadMoreImpl _value,
      $Res Function(_$RecipeListLoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeListLoadMoreImpl implements RecipeListLoadMore {
  const _$RecipeListLoadMoreImpl();

  @override
  String toString() {
    return 'RecipeListEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeListLoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeListParams params) load,
    required TResult Function() reload,
    required TResult Function() loadMore,
    required TResult Function(int id) deleted,
    required TResult Function(int id) changed,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeListParams params)? load,
    TResult? Function()? reload,
    TResult? Function()? loadMore,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? changed,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeListParams params)? load,
    TResult Function()? reload,
    TResult Function()? loadMore,
    TResult Function(int id)? deleted,
    TResult Function(int id)? changed,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListLoad value) load,
    required TResult Function(RecipeListReload value) reload,
    required TResult Function(RecipeListLoadMore value) loadMore,
    required TResult Function(RecipeListDeleted value) deleted,
    required TResult Function(RecipeListChanged value) changed,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListLoad value)? load,
    TResult? Function(RecipeListReload value)? reload,
    TResult? Function(RecipeListLoadMore value)? loadMore,
    TResult? Function(RecipeListDeleted value)? deleted,
    TResult? Function(RecipeListChanged value)? changed,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListLoad value)? load,
    TResult Function(RecipeListReload value)? reload,
    TResult Function(RecipeListLoadMore value)? loadMore,
    TResult Function(RecipeListDeleted value)? deleted,
    TResult Function(RecipeListChanged value)? changed,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class RecipeListLoadMore implements RecipeListEvent {
  const factory RecipeListLoadMore() = _$RecipeListLoadMoreImpl;
}

/// @nodoc
abstract class _$$RecipeListDeletedImplCopyWith<$Res> {
  factory _$$RecipeListDeletedImplCopyWith(_$RecipeListDeletedImpl value,
          $Res Function(_$RecipeListDeletedImpl) then) =
      __$$RecipeListDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RecipeListDeletedImplCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$RecipeListDeletedImpl>
    implements _$$RecipeListDeletedImplCopyWith<$Res> {
  __$$RecipeListDeletedImplCopyWithImpl(_$RecipeListDeletedImpl _value,
      $Res Function(_$RecipeListDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RecipeListDeletedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecipeListDeletedImpl implements RecipeListDeleted {
  const _$RecipeListDeletedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'RecipeListEvent.deleted(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListDeletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListDeletedImplCopyWith<_$RecipeListDeletedImpl> get copyWith =>
      __$$RecipeListDeletedImplCopyWithImpl<_$RecipeListDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeListParams params) load,
    required TResult Function() reload,
    required TResult Function() loadMore,
    required TResult Function(int id) deleted,
    required TResult Function(int id) changed,
  }) {
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeListParams params)? load,
    TResult? Function()? reload,
    TResult? Function()? loadMore,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? changed,
  }) {
    return deleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeListParams params)? load,
    TResult Function()? reload,
    TResult Function()? loadMore,
    TResult Function(int id)? deleted,
    TResult Function(int id)? changed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListLoad value) load,
    required TResult Function(RecipeListReload value) reload,
    required TResult Function(RecipeListLoadMore value) loadMore,
    required TResult Function(RecipeListDeleted value) deleted,
    required TResult Function(RecipeListChanged value) changed,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListLoad value)? load,
    TResult? Function(RecipeListReload value)? reload,
    TResult? Function(RecipeListLoadMore value)? loadMore,
    TResult? Function(RecipeListDeleted value)? deleted,
    TResult? Function(RecipeListChanged value)? changed,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListLoad value)? load,
    TResult Function(RecipeListReload value)? reload,
    TResult Function(RecipeListLoadMore value)? loadMore,
    TResult Function(RecipeListDeleted value)? deleted,
    TResult Function(RecipeListChanged value)? changed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class RecipeListDeleted implements RecipeListEvent {
  const factory RecipeListDeleted({required final int id}) =
      _$RecipeListDeletedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RecipeListDeletedImplCopyWith<_$RecipeListDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeListChangedImplCopyWith<$Res> {
  factory _$$RecipeListChangedImplCopyWith(_$RecipeListChangedImpl value,
          $Res Function(_$RecipeListChangedImpl) then) =
      __$$RecipeListChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RecipeListChangedImplCopyWithImpl<$Res>
    extends _$RecipeListEventCopyWithImpl<$Res, _$RecipeListChangedImpl>
    implements _$$RecipeListChangedImplCopyWith<$Res> {
  __$$RecipeListChangedImplCopyWithImpl(_$RecipeListChangedImpl _value,
      $Res Function(_$RecipeListChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RecipeListChangedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecipeListChangedImpl implements RecipeListChanged {
  const _$RecipeListChangedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'RecipeListEvent.changed(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListChangedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListChangedImplCopyWith<_$RecipeListChangedImpl> get copyWith =>
      __$$RecipeListChangedImplCopyWithImpl<_$RecipeListChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeListParams params) load,
    required TResult Function() reload,
    required TResult Function() loadMore,
    required TResult Function(int id) deleted,
    required TResult Function(int id) changed,
  }) {
    return changed(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeListParams params)? load,
    TResult? Function()? reload,
    TResult? Function()? loadMore,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? changed,
  }) {
    return changed?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeListParams params)? load,
    TResult Function()? reload,
    TResult Function()? loadMore,
    TResult Function(int id)? deleted,
    TResult Function(int id)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListLoad value) load,
    required TResult Function(RecipeListReload value) reload,
    required TResult Function(RecipeListLoadMore value) loadMore,
    required TResult Function(RecipeListDeleted value) deleted,
    required TResult Function(RecipeListChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListLoad value)? load,
    TResult? Function(RecipeListReload value)? reload,
    TResult? Function(RecipeListLoadMore value)? loadMore,
    TResult? Function(RecipeListDeleted value)? deleted,
    TResult? Function(RecipeListChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListLoad value)? load,
    TResult Function(RecipeListReload value)? reload,
    TResult Function(RecipeListLoadMore value)? loadMore,
    TResult Function(RecipeListDeleted value)? deleted,
    TResult Function(RecipeListChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class RecipeListChanged implements RecipeListEvent {
  const factory RecipeListChanged({required final int id}) =
      _$RecipeListChangedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RecipeListChangedImplCopyWith<_$RecipeListChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeListState {
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  RecipeListParams get params => throw _privateConstructorUsedError;
  List<RecipeViewModel> get recipes => throw _privateConstructorUsedError;
  bool get reachedEnd => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  (Object, StackTrace)? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeListStateCopyWith<RecipeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListStateCopyWith<$Res> {
  factory $RecipeListStateCopyWith(
          RecipeListState value, $Res Function(RecipeListState) then) =
      _$RecipeListStateCopyWithImpl<$Res, RecipeListState>;
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      RecipeListParams params,
      List<RecipeViewModel> recipes,
      bool reachedEnd,
      bool loading,
      (Object, StackTrace)? error});

  $RecipeListParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$RecipeListStateCopyWithImpl<$Res, $Val extends RecipeListState>
    implements $RecipeListStateCopyWith<$Res> {
  _$RecipeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? params = null,
    Object? recipes = null,
    Object? reachedEnd = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RecipeListParams,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeViewModel>,
      reachedEnd: null == reachedEnd
          ? _value.reachedEnd
          : reachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $RecipeListParamsCopyWith<$Res> get params {
    return $RecipeListParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeListInitialImplCopyWith<$Res>
    implements $RecipeListStateCopyWith<$Res> {
  factory _$$RecipeListInitialImplCopyWith(_$RecipeListInitialImpl value,
          $Res Function(_$RecipeListInitialImpl) then) =
      __$$RecipeListInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      RecipeListParams params,
      List<RecipeViewModel> recipes,
      bool reachedEnd,
      bool loading,
      (Object, StackTrace)? error});

  @override
  $RecipeListParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$RecipeListInitialImplCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res, _$RecipeListInitialImpl>
    implements _$$RecipeListInitialImplCopyWith<$Res> {
  __$$RecipeListInitialImplCopyWithImpl(_$RecipeListInitialImpl _value,
      $Res Function(_$RecipeListInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? params = null,
    Object? recipes = null,
    Object? reachedEnd = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$RecipeListInitialImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RecipeListParams,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeViewModel>,
      reachedEnd: null == reachedEnd
          ? _value.reachedEnd
          : reachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$RecipeListInitialImpl implements _RecipeListInitial {
  const _$RecipeListInitialImpl(
      {this.pageNumber = 0,
      this.pageSize = 10,
      this.params = const RecipeListParams(),
      final List<RecipeViewModel> recipes = const [],
      this.reachedEnd = false,
      this.loading = true,
      this.error})
      : _recipes = recipes;

  @override
  @JsonKey()
  final int pageNumber;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final RecipeListParams params;
  final List<RecipeViewModel> _recipes;
  @override
  @JsonKey()
  List<RecipeViewModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  @JsonKey()
  final bool reachedEnd;
  @override
  @JsonKey()
  final bool loading;
  @override
  final (Object, StackTrace)? error;

  @override
  String toString() {
    return 'RecipeListState(pageNumber: $pageNumber, pageSize: $pageSize, params: $params, recipes: $recipes, reachedEnd: $reachedEnd, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListInitialImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.params, params) || other.params == params) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.reachedEnd, reachedEnd) ||
                other.reachedEnd == reachedEnd) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageNumber,
      pageSize,
      params,
      const DeepCollectionEquality().hash(_recipes),
      reachedEnd,
      loading,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListInitialImplCopyWith<_$RecipeListInitialImpl> get copyWith =>
      __$$RecipeListInitialImplCopyWithImpl<_$RecipeListInitialImpl>(
          this, _$identity);
}

abstract class _RecipeListInitial implements RecipeListState {
  const factory _RecipeListInitial(
      {final int pageNumber,
      final int pageSize,
      final RecipeListParams params,
      final List<RecipeViewModel> recipes,
      final bool reachedEnd,
      final bool loading,
      final (Object, StackTrace)? error}) = _$RecipeListInitialImpl;

  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  RecipeListParams get params;
  @override
  List<RecipeViewModel> get recipes;
  @override
  bool get reachedEnd;
  @override
  bool get loading;
  @override
  (Object, StackTrace)? get error;
  @override
  @JsonKey(ignore: true)
  _$$RecipeListInitialImplCopyWith<_$RecipeListInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeListParams {
  String? get query => throw _privateConstructorUsedError;
  RecipeOrder get order => throw _privateConstructorUsedError;
  bool get onlyMyRecipes => throw _privateConstructorUsedError;
  String? get authorId => throw _privateConstructorUsedError;
  bool get invalidateCache => throw _privateConstructorUsedError;
  GetRecipesSource? get source => throw _privateConstructorUsedError;
  List<int>? get exceptId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeListParamsCopyWith<RecipeListParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListParamsCopyWith<$Res> {
  factory $RecipeListParamsCopyWith(
          RecipeListParams value, $Res Function(RecipeListParams) then) =
      _$RecipeListParamsCopyWithImpl<$Res, RecipeListParams>;
  @useResult
  $Res call(
      {String? query,
      RecipeOrder order,
      bool onlyMyRecipes,
      String? authorId,
      bool invalidateCache,
      GetRecipesSource? source,
      List<int>? exceptId});
}

/// @nodoc
class _$RecipeListParamsCopyWithImpl<$Res, $Val extends RecipeListParams>
    implements $RecipeListParamsCopyWith<$Res> {
  _$RecipeListParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? order = null,
    Object? onlyMyRecipes = null,
    Object? authorId = freezed,
    Object? invalidateCache = null,
    Object? source = freezed,
    Object? exceptId = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as RecipeOrder,
      onlyMyRecipes: null == onlyMyRecipes
          ? _value.onlyMyRecipes
          : onlyMyRecipes // ignore: cast_nullable_to_non_nullable
              as bool,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidateCache: null == invalidateCache
          ? _value.invalidateCache
          : invalidateCache // ignore: cast_nullable_to_non_nullable
              as bool,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as GetRecipesSource?,
      exceptId: freezed == exceptId
          ? _value.exceptId
          : exceptId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeListParamsImplCopyWith<$Res>
    implements $RecipeListParamsCopyWith<$Res> {
  factory _$$RecipeListParamsImplCopyWith(_$RecipeListParamsImpl value,
          $Res Function(_$RecipeListParamsImpl) then) =
      __$$RecipeListParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? query,
      RecipeOrder order,
      bool onlyMyRecipes,
      String? authorId,
      bool invalidateCache,
      GetRecipesSource? source,
      List<int>? exceptId});
}

/// @nodoc
class __$$RecipeListParamsImplCopyWithImpl<$Res>
    extends _$RecipeListParamsCopyWithImpl<$Res, _$RecipeListParamsImpl>
    implements _$$RecipeListParamsImplCopyWith<$Res> {
  __$$RecipeListParamsImplCopyWithImpl(_$RecipeListParamsImpl _value,
      $Res Function(_$RecipeListParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? order = null,
    Object? onlyMyRecipes = null,
    Object? authorId = freezed,
    Object? invalidateCache = null,
    Object? source = freezed,
    Object? exceptId = freezed,
  }) {
    return _then(_$RecipeListParamsImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as RecipeOrder,
      onlyMyRecipes: null == onlyMyRecipes
          ? _value.onlyMyRecipes
          : onlyMyRecipes // ignore: cast_nullable_to_non_nullable
              as bool,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidateCache: null == invalidateCache
          ? _value.invalidateCache
          : invalidateCache // ignore: cast_nullable_to_non_nullable
              as bool,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as GetRecipesSource?,
      exceptId: freezed == exceptId
          ? _value._exceptId
          : exceptId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$RecipeListParamsImpl implements _RecipeListParams {
  const _$RecipeListParamsImpl(
      {this.query,
      this.order = RecipeOrder.publishedAtDesc,
      this.onlyMyRecipes = false,
      this.authorId,
      this.invalidateCache = false,
      this.source,
      final List<int>? exceptId})
      : _exceptId = exceptId;

  @override
  final String? query;
  @override
  @JsonKey()
  final RecipeOrder order;
  @override
  @JsonKey()
  final bool onlyMyRecipes;
  @override
  final String? authorId;
  @override
  @JsonKey()
  final bool invalidateCache;
  @override
  final GetRecipesSource? source;
  final List<int>? _exceptId;
  @override
  List<int>? get exceptId {
    final value = _exceptId;
    if (value == null) return null;
    if (_exceptId is EqualUnmodifiableListView) return _exceptId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecipeListParams(query: $query, order: $order, onlyMyRecipes: $onlyMyRecipes, authorId: $authorId, invalidateCache: $invalidateCache, source: $source, exceptId: $exceptId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListParamsImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.onlyMyRecipes, onlyMyRecipes) ||
                other.onlyMyRecipes == onlyMyRecipes) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.invalidateCache, invalidateCache) ||
                other.invalidateCache == invalidateCache) &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality().equals(other._exceptId, _exceptId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      order,
      onlyMyRecipes,
      authorId,
      invalidateCache,
      source,
      const DeepCollectionEquality().hash(_exceptId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListParamsImplCopyWith<_$RecipeListParamsImpl> get copyWith =>
      __$$RecipeListParamsImplCopyWithImpl<_$RecipeListParamsImpl>(
          this, _$identity);
}

abstract class _RecipeListParams implements RecipeListParams {
  const factory _RecipeListParams(
      {final String? query,
      final RecipeOrder order,
      final bool onlyMyRecipes,
      final String? authorId,
      final bool invalidateCache,
      final GetRecipesSource? source,
      final List<int>? exceptId}) = _$RecipeListParamsImpl;

  @override
  String? get query;
  @override
  RecipeOrder get order;
  @override
  bool get onlyMyRecipes;
  @override
  String? get authorId;
  @override
  bool get invalidateCache;
  @override
  GetRecipesSource? get source;
  @override
  List<int>? get exceptId;
  @override
  @JsonKey(ignore: true)
  _$$RecipeListParamsImplCopyWith<_$RecipeListParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
