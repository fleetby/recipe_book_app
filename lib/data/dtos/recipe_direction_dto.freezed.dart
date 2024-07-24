// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_direction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDirectionDto _$RecipeDirectionDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDirectionDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeDirectionDto {
  String get direction => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDirectionDtoCopyWith<RecipeDirectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDirectionDtoCopyWith<$Res> {
  factory $RecipeDirectionDtoCopyWith(
          RecipeDirectionDto value, $Res Function(RecipeDirectionDto) then) =
      _$RecipeDirectionDtoCopyWithImpl<$Res, RecipeDirectionDto>;
  @useResult
  $Res call({String direction, List<String> images});
}

/// @nodoc
class _$RecipeDirectionDtoCopyWithImpl<$Res, $Val extends RecipeDirectionDto>
    implements $RecipeDirectionDtoCopyWith<$Res> {
  _$RecipeDirectionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDirectionDtoImplCopyWith<$Res>
    implements $RecipeDirectionDtoCopyWith<$Res> {
  factory _$$RecipeDirectionDtoImplCopyWith(_$RecipeDirectionDtoImpl value,
          $Res Function(_$RecipeDirectionDtoImpl) then) =
      __$$RecipeDirectionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String direction, List<String> images});
}

/// @nodoc
class __$$RecipeDirectionDtoImplCopyWithImpl<$Res>
    extends _$RecipeDirectionDtoCopyWithImpl<$Res, _$RecipeDirectionDtoImpl>
    implements _$$RecipeDirectionDtoImplCopyWith<$Res> {
  __$$RecipeDirectionDtoImplCopyWithImpl(_$RecipeDirectionDtoImpl _value,
      $Res Function(_$RecipeDirectionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? images = null,
  }) {
    return _then(_$RecipeDirectionDtoImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDirectionDtoImpl implements _RecipeDirectionDto {
  const _$RecipeDirectionDtoImpl(
      {required this.direction, required final List<String> images})
      : _images = images;

  factory _$RecipeDirectionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDirectionDtoImplFromJson(json);

  @override
  final String direction;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'RecipeDirectionDto(direction: $direction, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDirectionDtoImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, direction, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDirectionDtoImplCopyWith<_$RecipeDirectionDtoImpl> get copyWith =>
      __$$RecipeDirectionDtoImplCopyWithImpl<_$RecipeDirectionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDirectionDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeDirectionDto implements RecipeDirectionDto {
  const factory _RecipeDirectionDto(
      {required final String direction,
      required final List<String> images}) = _$RecipeDirectionDtoImpl;

  factory _RecipeDirectionDto.fromJson(Map<String, dynamic> json) =
      _$RecipeDirectionDtoImpl.fromJson;

  @override
  String get direction;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDirectionDtoImplCopyWith<_$RecipeDirectionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
