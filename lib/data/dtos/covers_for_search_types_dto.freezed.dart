// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'covers_for_search_types_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoversForSearchTypesDto _$CoversForSearchTypesDtoFromJson(
    Map<String, dynamic> json) {
  return _CoversForSearchTypesDto.fromJson(json);
}

/// @nodoc
mixin _$CoversForSearchTypesDto {
  @JsonKey(name: 'most_saved')
  String? get mostSaved => throw _privateConstructorUsedError;
  @JsonKey(name: 'most_commented')
  String? get mostCommented => throw _privateConstructorUsedError;
  String? get newest => throw _privateConstructorUsedError;
  String? get oldest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoversForSearchTypesDtoCopyWith<CoversForSearchTypesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoversForSearchTypesDtoCopyWith<$Res> {
  factory $CoversForSearchTypesDtoCopyWith(CoversForSearchTypesDto value,
          $Res Function(CoversForSearchTypesDto) then) =
      _$CoversForSearchTypesDtoCopyWithImpl<$Res, CoversForSearchTypesDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'most_saved') String? mostSaved,
      @JsonKey(name: 'most_commented') String? mostCommented,
      String? newest,
      String? oldest});
}

/// @nodoc
class _$CoversForSearchTypesDtoCopyWithImpl<$Res,
        $Val extends CoversForSearchTypesDto>
    implements $CoversForSearchTypesDtoCopyWith<$Res> {
  _$CoversForSearchTypesDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$CoversForSearchTypesDtoImplCopyWith<$Res>
    implements $CoversForSearchTypesDtoCopyWith<$Res> {
  factory _$$CoversForSearchTypesDtoImplCopyWith(
          _$CoversForSearchTypesDtoImpl value,
          $Res Function(_$CoversForSearchTypesDtoImpl) then) =
      __$$CoversForSearchTypesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'most_saved') String? mostSaved,
      @JsonKey(name: 'most_commented') String? mostCommented,
      String? newest,
      String? oldest});
}

/// @nodoc
class __$$CoversForSearchTypesDtoImplCopyWithImpl<$Res>
    extends _$CoversForSearchTypesDtoCopyWithImpl<$Res,
        _$CoversForSearchTypesDtoImpl>
    implements _$$CoversForSearchTypesDtoImplCopyWith<$Res> {
  __$$CoversForSearchTypesDtoImplCopyWithImpl(
      _$CoversForSearchTypesDtoImpl _value,
      $Res Function(_$CoversForSearchTypesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostSaved = freezed,
    Object? mostCommented = freezed,
    Object? newest = freezed,
    Object? oldest = freezed,
  }) {
    return _then(_$CoversForSearchTypesDtoImpl(
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
@JsonSerializable()
class _$CoversForSearchTypesDtoImpl implements _CoversForSearchTypesDto {
  const _$CoversForSearchTypesDtoImpl(
      {@JsonKey(name: 'most_saved') required this.mostSaved,
      @JsonKey(name: 'most_commented') required this.mostCommented,
      required this.newest,
      required this.oldest});

  factory _$CoversForSearchTypesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoversForSearchTypesDtoImplFromJson(json);

  @override
  @JsonKey(name: 'most_saved')
  final String? mostSaved;
  @override
  @JsonKey(name: 'most_commented')
  final String? mostCommented;
  @override
  final String? newest;
  @override
  final String? oldest;

  @override
  String toString() {
    return 'CoversForSearchTypesDto(mostSaved: $mostSaved, mostCommented: $mostCommented, newest: $newest, oldest: $oldest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoversForSearchTypesDtoImpl &&
            (identical(other.mostSaved, mostSaved) ||
                other.mostSaved == mostSaved) &&
            (identical(other.mostCommented, mostCommented) ||
                other.mostCommented == mostCommented) &&
            (identical(other.newest, newest) || other.newest == newest) &&
            (identical(other.oldest, oldest) || other.oldest == oldest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mostSaved, mostCommented, newest, oldest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoversForSearchTypesDtoImplCopyWith<_$CoversForSearchTypesDtoImpl>
      get copyWith => __$$CoversForSearchTypesDtoImplCopyWithImpl<
          _$CoversForSearchTypesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoversForSearchTypesDtoImplToJson(
      this,
    );
  }
}

abstract class _CoversForSearchTypesDto implements CoversForSearchTypesDto {
  const factory _CoversForSearchTypesDto(
      {@JsonKey(name: 'most_saved') required final String? mostSaved,
      @JsonKey(name: 'most_commented') required final String? mostCommented,
      required final String? newest,
      required final String? oldest}) = _$CoversForSearchTypesDtoImpl;

  factory _CoversForSearchTypesDto.fromJson(Map<String, dynamic> json) =
      _$CoversForSearchTypesDtoImpl.fromJson;

  @override
  @JsonKey(name: 'most_saved')
  String? get mostSaved;
  @override
  @JsonKey(name: 'most_commented')
  String? get mostCommented;
  @override
  String? get newest;
  @override
  String? get oldest;
  @override
  @JsonKey(ignore: true)
  _$$CoversForSearchTypesDtoImplCopyWith<_$CoversForSearchTypesDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
