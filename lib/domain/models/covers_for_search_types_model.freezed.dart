// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'covers_for_search_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoversForSearchTypesModel {
  String? get mostSaved => throw _privateConstructorUsedError;
  String? get mostCommented => throw _privateConstructorUsedError;
  String? get newest => throw _privateConstructorUsedError;
  String? get oldest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoversForSearchTypesModelCopyWith<CoversForSearchTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoversForSearchTypesModelCopyWith<$Res> {
  factory $CoversForSearchTypesModelCopyWith(CoversForSearchTypesModel value,
          $Res Function(CoversForSearchTypesModel) then) =
      _$CoversForSearchTypesModelCopyWithImpl<$Res, CoversForSearchTypesModel>;
  @useResult
  $Res call(
      {String? mostSaved,
      String? mostCommented,
      String? newest,
      String? oldest});
}

/// @nodoc
class _$CoversForSearchTypesModelCopyWithImpl<$Res,
        $Val extends CoversForSearchTypesModel>
    implements $CoversForSearchTypesModelCopyWith<$Res> {
  _$CoversForSearchTypesModelCopyWithImpl(this._value, this._then);

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
              as String?,
      mostCommented: freezed == mostCommented
          ? _value.mostCommented
          : mostCommented // ignore: cast_nullable_to_non_nullable
              as String?,
      newest: freezed == newest
          ? _value.newest
          : newest // ignore: cast_nullable_to_non_nullable
              as String?,
      oldest: freezed == oldest
          ? _value.oldest
          : oldest // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoversForSearchTypesModelImplCopyWith<$Res>
    implements $CoversForSearchTypesModelCopyWith<$Res> {
  factory _$$CoversForSearchTypesModelImplCopyWith(
          _$CoversForSearchTypesModelImpl value,
          $Res Function(_$CoversForSearchTypesModelImpl) then) =
      __$$CoversForSearchTypesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? mostSaved,
      String? mostCommented,
      String? newest,
      String? oldest});
}

/// @nodoc
class __$$CoversForSearchTypesModelImplCopyWithImpl<$Res>
    extends _$CoversForSearchTypesModelCopyWithImpl<$Res,
        _$CoversForSearchTypesModelImpl>
    implements _$$CoversForSearchTypesModelImplCopyWith<$Res> {
  __$$CoversForSearchTypesModelImplCopyWithImpl(
      _$CoversForSearchTypesModelImpl _value,
      $Res Function(_$CoversForSearchTypesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostSaved = freezed,
    Object? mostCommented = freezed,
    Object? newest = freezed,
    Object? oldest = freezed,
  }) {
    return _then(_$CoversForSearchTypesModelImpl(
      mostSaved: freezed == mostSaved
          ? _value.mostSaved
          : mostSaved // ignore: cast_nullable_to_non_nullable
              as String?,
      mostCommented: freezed == mostCommented
          ? _value.mostCommented
          : mostCommented // ignore: cast_nullable_to_non_nullable
              as String?,
      newest: freezed == newest
          ? _value.newest
          : newest // ignore: cast_nullable_to_non_nullable
              as String?,
      oldest: freezed == oldest
          ? _value.oldest
          : oldest // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CoversForSearchTypesModelImpl implements _CoversForSearchTypesModel {
  const _$CoversForSearchTypesModelImpl(
      {this.mostSaved, this.mostCommented, this.newest, this.oldest});

  @override
  final String? mostSaved;
  @override
  final String? mostCommented;
  @override
  final String? newest;
  @override
  final String? oldest;

  @override
  String toString() {
    return 'CoversForSearchTypesModel(mostSaved: $mostSaved, mostCommented: $mostCommented, newest: $newest, oldest: $oldest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoversForSearchTypesModelImpl &&
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
  _$$CoversForSearchTypesModelImplCopyWith<_$CoversForSearchTypesModelImpl>
      get copyWith => __$$CoversForSearchTypesModelImplCopyWithImpl<
          _$CoversForSearchTypesModelImpl>(this, _$identity);
}

abstract class _CoversForSearchTypesModel implements CoversForSearchTypesModel {
  const factory _CoversForSearchTypesModel(
      {final String? mostSaved,
      final String? mostCommented,
      final String? newest,
      final String? oldest}) = _$CoversForSearchTypesModelImpl;

  @override
  String? get mostSaved;
  @override
  String? get mostCommented;
  @override
  String? get newest;
  @override
  String? get oldest;
  @override
  @JsonKey(ignore: true)
  _$$CoversForSearchTypesModelImplCopyWith<_$CoversForSearchTypesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
