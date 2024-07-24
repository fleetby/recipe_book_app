// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_ingredient_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeIngredientViewModel {
  String get name => throw _privateConstructorUsedError;
  String get quantityHint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeIngredientViewModelCopyWith<RecipeIngredientViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeIngredientViewModelCopyWith<$Res> {
  factory $RecipeIngredientViewModelCopyWith(RecipeIngredientViewModel value,
          $Res Function(RecipeIngredientViewModel) then) =
      _$RecipeIngredientViewModelCopyWithImpl<$Res, RecipeIngredientViewModel>;
  @useResult
  $Res call({String name, String quantityHint});
}

/// @nodoc
class _$RecipeIngredientViewModelCopyWithImpl<$Res,
        $Val extends RecipeIngredientViewModel>
    implements $RecipeIngredientViewModelCopyWith<$Res> {
  _$RecipeIngredientViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantityHint = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantityHint: null == quantityHint
          ? _value.quantityHint
          : quantityHint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeIngredientViewModelImplCopyWith<$Res>
    implements $RecipeIngredientViewModelCopyWith<$Res> {
  factory _$$RecipeIngredientViewModelImplCopyWith(
          _$RecipeIngredientViewModelImpl value,
          $Res Function(_$RecipeIngredientViewModelImpl) then) =
      __$$RecipeIngredientViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String quantityHint});
}

/// @nodoc
class __$$RecipeIngredientViewModelImplCopyWithImpl<$Res>
    extends _$RecipeIngredientViewModelCopyWithImpl<$Res,
        _$RecipeIngredientViewModelImpl>
    implements _$$RecipeIngredientViewModelImplCopyWith<$Res> {
  __$$RecipeIngredientViewModelImplCopyWithImpl(
      _$RecipeIngredientViewModelImpl _value,
      $Res Function(_$RecipeIngredientViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantityHint = null,
  }) {
    return _then(_$RecipeIngredientViewModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantityHint: null == quantityHint
          ? _value.quantityHint
          : quantityHint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipeIngredientViewModelImpl implements _RecipeIngredientViewModel {
  const _$RecipeIngredientViewModelImpl(
      {required this.name, required this.quantityHint});

  @override
  final String name;
  @override
  final String quantityHint;

  @override
  String toString() {
    return 'RecipeIngredientViewModel(name: $name, quantityHint: $quantityHint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeIngredientViewModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantityHint, quantityHint) ||
                other.quantityHint == quantityHint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, quantityHint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeIngredientViewModelImplCopyWith<_$RecipeIngredientViewModelImpl>
      get copyWith => __$$RecipeIngredientViewModelImplCopyWithImpl<
          _$RecipeIngredientViewModelImpl>(this, _$identity);
}

abstract class _RecipeIngredientViewModel implements RecipeIngredientViewModel {
  const factory _RecipeIngredientViewModel(
      {required final String name,
      required final String quantityHint}) = _$RecipeIngredientViewModelImpl;

  @override
  String get name;
  @override
  String get quantityHint;
  @override
  @JsonKey(ignore: true)
  _$$RecipeIngredientViewModelImplCopyWith<_$RecipeIngredientViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
