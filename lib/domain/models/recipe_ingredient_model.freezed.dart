// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeIngredientModel {
  String get name => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeIngredientModelCopyWith<RecipeIngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeIngredientModelCopyWith<$Res> {
  factory $RecipeIngredientModelCopyWith(RecipeIngredientModel value,
          $Res Function(RecipeIngredientModel) then) =
      _$RecipeIngredientModelCopyWithImpl<$Res, RecipeIngredientModel>;
  @useResult
  $Res call({String name, String quantity});
}

/// @nodoc
class _$RecipeIngredientModelCopyWithImpl<$Res,
        $Val extends RecipeIngredientModel>
    implements $RecipeIngredientModelCopyWith<$Res> {
  _$RecipeIngredientModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RecipeIngredientModelImplCopyWith<$Res>
    implements $RecipeIngredientModelCopyWith<$Res> {
  factory _$$RecipeIngredientModelImplCopyWith(
          _$RecipeIngredientModelImpl value,
          $Res Function(_$RecipeIngredientModelImpl) then) =
      __$$RecipeIngredientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String quantity});
}

/// @nodoc
class __$$RecipeIngredientModelImplCopyWithImpl<$Res>
    extends _$RecipeIngredientModelCopyWithImpl<$Res,
        _$RecipeIngredientModelImpl>
    implements _$$RecipeIngredientModelImplCopyWith<$Res> {
  __$$RecipeIngredientModelImplCopyWithImpl(_$RecipeIngredientModelImpl _value,
      $Res Function(_$RecipeIngredientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$RecipeIngredientModelImpl(
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

class _$RecipeIngredientModelImpl implements _RecipeIngredientModel {
  const _$RecipeIngredientModelImpl(
      {required this.name, required this.quantity});

  @override
  final String name;
  @override
  final String quantity;

  @override
  String toString() {
    return 'RecipeIngredientModel(name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeIngredientModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeIngredientModelImplCopyWith<_$RecipeIngredientModelImpl>
      get copyWith => __$$RecipeIngredientModelImplCopyWithImpl<
          _$RecipeIngredientModelImpl>(this, _$identity);
}

abstract class _RecipeIngredientModel implements RecipeIngredientModel {
  const factory _RecipeIngredientModel(
      {required final String name,
      required final String quantity}) = _$RecipeIngredientModelImpl;

  @override
  String get name;
  @override
  String get quantity;
  @override
  @JsonKey(ignore: true)
  _$$RecipeIngredientModelImplCopyWith<_$RecipeIngredientModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
