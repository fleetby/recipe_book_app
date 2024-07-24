// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions_editor_item_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DirectionsEditorItemViewModel {
  String get direction => throw _privateConstructorUsedError;
  List<ImageItemViewModel> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectionsEditorItemViewModelCopyWith<DirectionsEditorItemViewModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsEditorItemViewModelCopyWith<$Res> {
  factory $DirectionsEditorItemViewModelCopyWith(
          DirectionsEditorItemViewModel value,
          $Res Function(DirectionsEditorItemViewModel) then) =
      _$DirectionsEditorItemViewModelCopyWithImpl<$Res,
          DirectionsEditorItemViewModel>;
  @useResult
  $Res call({String direction, List<ImageItemViewModel> images});
}

/// @nodoc
class _$DirectionsEditorItemViewModelCopyWithImpl<$Res,
        $Val extends DirectionsEditorItemViewModel>
    implements $DirectionsEditorItemViewModelCopyWith<$Res> {
  _$DirectionsEditorItemViewModelCopyWithImpl(this._value, this._then);

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
              as List<ImageItemViewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectionsEditorItemViewModelImplCopyWith<$Res>
    implements $DirectionsEditorItemViewModelCopyWith<$Res> {
  factory _$$DirectionsEditorItemViewModelImplCopyWith(
          _$DirectionsEditorItemViewModelImpl value,
          $Res Function(_$DirectionsEditorItemViewModelImpl) then) =
      __$$DirectionsEditorItemViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String direction, List<ImageItemViewModel> images});
}

/// @nodoc
class __$$DirectionsEditorItemViewModelImplCopyWithImpl<$Res>
    extends _$DirectionsEditorItemViewModelCopyWithImpl<$Res,
        _$DirectionsEditorItemViewModelImpl>
    implements _$$DirectionsEditorItemViewModelImplCopyWith<$Res> {
  __$$DirectionsEditorItemViewModelImplCopyWithImpl(
      _$DirectionsEditorItemViewModelImpl _value,
      $Res Function(_$DirectionsEditorItemViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? images = null,
  }) {
    return _then(_$DirectionsEditorItemViewModelImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageItemViewModel>,
    ));
  }
}

/// @nodoc

class _$DirectionsEditorItemViewModelImpl
    implements _DirectionsEditorItemViewModel {
  const _$DirectionsEditorItemViewModelImpl(
      {this.direction = '', final List<ImageItemViewModel> images = const []})
      : _images = images;

  @override
  @JsonKey()
  final String direction;
  final List<ImageItemViewModel> _images;
  @override
  @JsonKey()
  List<ImageItemViewModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'DirectionsEditorItemViewModel(direction: $direction, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorItemViewModelImpl &&
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
  _$$DirectionsEditorItemViewModelImplCopyWith<
          _$DirectionsEditorItemViewModelImpl>
      get copyWith => __$$DirectionsEditorItemViewModelImplCopyWithImpl<
          _$DirectionsEditorItemViewModelImpl>(this, _$identity);
}

abstract class _DirectionsEditorItemViewModel
    implements DirectionsEditorItemViewModel {
  const factory _DirectionsEditorItemViewModel(
          {final String direction, final List<ImageItemViewModel> images}) =
      _$DirectionsEditorItemViewModelImpl;

  @override
  String get direction;
  @override
  List<ImageItemViewModel> get images;
  @override
  @JsonKey(ignore: true)
  _$$DirectionsEditorItemViewModelImplCopyWith<
          _$DirectionsEditorItemViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
