// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeIngredientDto _$RecipeIngredientDtoFromJson(Map<String, dynamic> json) {
  return _RecipeIngredientDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeIngredientDto {
  String get name => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeIngredientDtoCopyWith<RecipeIngredientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeIngredientDtoCopyWith<$Res> {
  factory $RecipeIngredientDtoCopyWith(
          RecipeIngredientDto value, $Res Function(RecipeIngredientDto) then) =
      _$RecipeIngredientDtoCopyWithImpl<$Res, RecipeIngredientDto>;
  @useResult
  $Res call({String name, String quantity});
}

/// @nodoc
class _$RecipeIngredientDtoCopyWithImpl<$Res, $Val extends RecipeIngredientDto>
    implements $RecipeIngredientDtoCopyWith<$Res> {
  _$RecipeIngredientDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeIngredientDtoImplCopyWith<$Res>
    implements $RecipeIngredientDtoCopyWith<$Res> {
  factory _$$RecipeIngredientDtoImplCopyWith(_$RecipeIngredientDtoImpl value,
          $Res Function(_$RecipeIngredientDtoImpl) then) =
      __$$RecipeIngredientDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String quantity});
}

/// @nodoc
class __$$RecipeIngredientDtoImplCopyWithImpl<$Res>
    extends _$RecipeIngredientDtoCopyWithImpl<$Res, _$RecipeIngredientDtoImpl>
    implements _$$RecipeIngredientDtoImplCopyWith<$Res> {
  __$$RecipeIngredientDtoImplCopyWithImpl(_$RecipeIngredientDtoImpl _value,
      $Res Function(_$RecipeIngredientDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$RecipeIngredientDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeIngredientDtoImpl implements _RecipeIngredientDto {
  const _$RecipeIngredientDtoImpl({required this.name, required this.quantity});

  factory _$RecipeIngredientDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeIngredientDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String quantity;

  @override
  String toString() {
    return 'RecipeIngredientDto(name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeIngredientDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeIngredientDtoImplCopyWith<_$RecipeIngredientDtoImpl> get copyWith =>
      __$$RecipeIngredientDtoImplCopyWithImpl<_$RecipeIngredientDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeIngredientDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeIngredientDto implements RecipeIngredientDto {
  const factory _RecipeIngredientDto(
      {required final String name,
      required final String quantity}) = _$RecipeIngredientDtoImpl;

  factory _RecipeIngredientDto.fromJson(Map<String, dynamic> json) =
      _$RecipeIngredientDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get quantity;
  @override
  @JsonKey(ignore: true)
  _$$RecipeIngredientDtoImplCopyWith<_$RecipeIngredientDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
