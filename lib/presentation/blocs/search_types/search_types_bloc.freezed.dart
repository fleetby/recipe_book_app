// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_types_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchTypesEvent {
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
    required TResult Function(SearchTypesLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTypesLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTypesLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTypesEventCopyWith<$Res> {
  factory $SearchTypesEventCopyWith(
          SearchTypesEvent value, $Res Function(SearchTypesEvent) then) =
      _$SearchTypesEventCopyWithImpl<$Res, SearchTypesEvent>;
}

/// @nodoc
class _$SearchTypesEventCopyWithImpl<$Res, $Val extends SearchTypesEvent>
    implements $SearchTypesEventCopyWith<$Res> {
  _$SearchTypesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchTypesLoadImplCopyWith<$Res> {
  factory _$$SearchTypesLoadImplCopyWith(_$SearchTypesLoadImpl value,
          $Res Function(_$SearchTypesLoadImpl) then) =
      __$$SearchTypesLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchTypesLoadImplCopyWithImpl<$Res>
    extends _$SearchTypesEventCopyWithImpl<$Res, _$SearchTypesLoadImpl>
    implements _$$SearchTypesLoadImplCopyWith<$Res> {
  __$$SearchTypesLoadImplCopyWithImpl(
      _$SearchTypesLoadImpl _value, $Res Function(_$SearchTypesLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchTypesLoadImpl implements SearchTypesLoad {
  const _$SearchTypesLoadImpl();

  @override
  String toString() {
    return 'SearchTypesEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchTypesLoadImpl);
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
    required TResult Function(SearchTypesLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTypesLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTypesLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class SearchTypesLoad implements SearchTypesEvent {
  const factory SearchTypesLoad() = _$SearchTypesLoadImpl;
}

/// @nodoc
mixin _$SearchTypesState {
  ImageProvider<Object>? get mostSaved => throw _privateConstructorUsedError;
  ImageProvider<Object>? get mostCommented =>
      throw _privateConstructorUsedError;
  ImageProvider<Object>? get newest => throw _privateConstructorUsedError;
  ImageProvider<Object>? get oldest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTypesStateCopyWith<SearchTypesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTypesStateCopyWith<$Res> {
  factory $SearchTypesStateCopyWith(
          SearchTypesState value, $Res Function(SearchTypesState) then) =
      _$SearchTypesStateCopyWithImpl<$Res, SearchTypesState>;
  @useResult
  $Res call(
      {ImageProvider<Object>? mostSaved,
      ImageProvider<Object>? mostCommented,
      ImageProvider<Object>? newest,
      ImageProvider<Object>? oldest});
}

/// @nodoc
class _$SearchTypesStateCopyWithImpl<$Res, $Val extends SearchTypesState>
    implements $SearchTypesStateCopyWith<$Res> {
  _$SearchTypesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostSaved = freezed,
    Object? mostCommented = freezed,
    Object? newest = freezed,
    Object? oldest = freezed,
  }) {
    return _then(_value.copyWith(
      mostSaved: freezed == mostSaved
          ? _value.mostSaved
          : mostSaved // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      mostCommented: freezed == mostCommented
          ? _value.mostCommented
          : mostCommented // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      newest: freezed == newest
          ? _value.newest
          : newest // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      oldest: freezed == oldest
          ? _value.oldest
          : oldest // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchTypesStateImplCopyWith<$Res>
    implements $SearchTypesStateCopyWith<$Res> {
  factory _$$SearchTypesStateImplCopyWith(_$SearchTypesStateImpl value,
          $Res Function(_$SearchTypesStateImpl) then) =
      __$$SearchTypesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ImageProvider<Object>? mostSaved,
      ImageProvider<Object>? mostCommented,
      ImageProvider<Object>? newest,
      ImageProvider<Object>? oldest});
}

/// @nodoc
class __$$SearchTypesStateImplCopyWithImpl<$Res>
    extends _$SearchTypesStateCopyWithImpl<$Res, _$SearchTypesStateImpl>
    implements _$$SearchTypesStateImplCopyWith<$Res> {
  __$$SearchTypesStateImplCopyWithImpl(_$SearchTypesStateImpl _value,
      $Res Function(_$SearchTypesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostSaved = freezed,
    Object? mostCommented = freezed,
    Object? newest = freezed,
    Object? oldest = freezed,
  }) {
    return _then(_$SearchTypesStateImpl(
      mostSaved: freezed == mostSaved
          ? _value.mostSaved
          : mostSaved // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      mostCommented: freezed == mostCommented
          ? _value.mostCommented
          : mostCommented // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      newest: freezed == newest
          ? _value.newest
          : newest // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      oldest: freezed == oldest
          ? _value.oldest
          : oldest // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
    ));
  }
}

/// @nodoc

class _$SearchTypesStateImpl implements _SearchTypesState {
  const _$SearchTypesStateImpl(
      {this.mostSaved, this.mostCommented, this.newest, this.oldest});

  @override
  final ImageProvider<Object>? mostSaved;
  @override
  final ImageProvider<Object>? mostCommented;
  @override
  final ImageProvider<Object>? newest;
  @override
  final ImageProvider<Object>? oldest;

  @override
  String toString() {
    return 'SearchTypesState(mostSaved: $mostSaved, mostCommented: $mostCommented, newest: $newest, oldest: $oldest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTypesStateImpl &&
            (identical(other.mostSaved, mostSaved) ||
                other.mostSaved == mostSaved) &&
            (identical(other.mostCommented, mostCommented) ||
                other.mostCommented == mostCommented) &&
            (identical(other.newest, newest) || other.newest == newest) &&
            (identical(other.oldest, oldest) || other.oldest == oldest));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, mostSaved, mostCommented, newest, oldest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTypesStateImplCopyWith<_$SearchTypesStateImpl> get copyWith =>
      __$$SearchTypesStateImplCopyWithImpl<_$SearchTypesStateImpl>(
          this, _$identity);
}

abstract class _SearchTypesState implements SearchTypesState {
  const factory _SearchTypesState(
      {final ImageProvider<Object>? mostSaved,
      final ImageProvider<Object>? mostCommented,
      final ImageProvider<Object>? newest,
      final ImageProvider<Object>? oldest}) = _$SearchTypesStateImpl;

  @override
  ImageProvider<Object>? get mostSaved;
  @override
  ImageProvider<Object>? get mostCommented;
  @override
  ImageProvider<Object>? get newest;
  @override
  ImageProvider<Object>? get oldest;
  @override
  @JsonKey(ignore: true)
  _$$SearchTypesStateImplCopyWith<_$SearchTypesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
