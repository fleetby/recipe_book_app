// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_direction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeDirectionModel {
  String get direction => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDirectionModelCopyWith<RecipeDirectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDirectionModelCopyWith<$Res> {
  factory $RecipeDirectionModelCopyWith(RecipeDirectionModel value,
          $Res Function(RecipeDirectionModel) then) =
      _$RecipeDirectionModelCopyWithImpl<$Res, RecipeDirectionModel>;
  @useResult
  $Res call({String direction, List<String> images});
}

/// @nodoc
class _$RecipeDirectionModelCopyWithImpl<$Res,
        $Val extends RecipeDirectionModel>
    implements $RecipeDirectionModelCopyWith<$Res> {
  _$RecipeDirectionModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RecipeDirectionModelImplCopyWith<$Res>
    implements $RecipeDirectionModelCopyWith<$Res> {
  factory _$$RecipeDirectionModelImplCopyWith(_$RecipeDirectionModelImpl value,
          $Res Function(_$RecipeDirectionModelImpl) then) =
      __$$RecipeDirectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String direction, List<String> images});
}

/// @nodoc
class __$$RecipeDirectionModelImplCopyWithImpl<$Res>
    extends _$RecipeDirectionModelCopyWithImpl<$Res, _$RecipeDirectionModelImpl>
    implements _$$RecipeDirectionModelImplCopyWith<$Res> {
  __$$RecipeDirectionModelImplCopyWithImpl(_$RecipeDirectionModelImpl _value,
      $Res Function(_$RecipeDirectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? images = null,
  }) {
    return _then(_$RecipeDirectionModelImpl(
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

class _$RecipeDirectionModelImpl implements _RecipeDirectionModel {
  const _$RecipeDirectionModelImpl(
      {required this.direction, required final List<String> images})
      : _images = images;

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
    return 'RecipeDirectionModel(direction: $direction, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDirectionModelImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, direction, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDirectionModelImplCopyWith<_$RecipeDirectionModelImpl>
      get copyWith =>
          __$$RecipeDirectionModelImplCopyWithImpl<_$RecipeDirectionModelImpl>(
              this, _$identity);
}

abstract class _RecipeDirectionModel implements RecipeDirectionModel {
  const factory _RecipeDirectionModel(
      {required final String direction,
      required final List<String> images}) = _$RecipeDirectionModelImpl;

  @override
  String get direction;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDirectionModelImplCopyWith<_$RecipeDirectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
