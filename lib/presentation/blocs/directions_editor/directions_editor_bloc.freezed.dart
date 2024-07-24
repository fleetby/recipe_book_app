// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions_editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DirectionsEditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsEditorEventCopyWith<$Res> {
  factory $DirectionsEditorEventCopyWith(DirectionsEditorEvent value,
          $Res Function(DirectionsEditorEvent) then) =
      _$DirectionsEditorEventCopyWithImpl<$Res, DirectionsEditorEvent>;
}

/// @nodoc
class _$DirectionsEditorEventCopyWithImpl<$Res,
        $Val extends DirectionsEditorEvent>
    implements $DirectionsEditorEventCopyWith<$Res> {
  _$DirectionsEditorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DirectionsEditorAddImplCopyWith<$Res> {
  factory _$$DirectionsEditorAddImplCopyWith(_$DirectionsEditorAddImpl value,
          $Res Function(_$DirectionsEditorAddImpl) then) =
      __$$DirectionsEditorAddImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DirectionsEditorAddImplCopyWithImpl<$Res>
    extends _$DirectionsEditorEventCopyWithImpl<$Res, _$DirectionsEditorAddImpl>
    implements _$$DirectionsEditorAddImplCopyWith<$Res> {
  __$$DirectionsEditorAddImplCopyWithImpl(_$DirectionsEditorAddImpl _value,
      $Res Function(_$DirectionsEditorAddImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DirectionsEditorAddImpl implements _DirectionsEditorAdd {
  const _$DirectionsEditorAddImpl();

  @override
  String toString() {
    return 'DirectionsEditorEvent.add()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorAddImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _DirectionsEditorAdd implements DirectionsEditorEvent {
  const factory _DirectionsEditorAdd() = _$DirectionsEditorAddImpl;
}

/// @nodoc
abstract class _$$DirectionsEditorEditTextImplCopyWith<$Res> {
  factory _$$DirectionsEditorEditTextImplCopyWith(
          _$DirectionsEditorEditTextImpl value,
          $Res Function(_$DirectionsEditorEditTextImpl) then) =
      __$$DirectionsEditorEditTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int direction, String newText});
}

/// @nodoc
class __$$DirectionsEditorEditTextImplCopyWithImpl<$Res>
    extends _$DirectionsEditorEventCopyWithImpl<$Res,
        _$DirectionsEditorEditTextImpl>
    implements _$$DirectionsEditorEditTextImplCopyWith<$Res> {
  __$$DirectionsEditorEditTextImplCopyWithImpl(
      _$DirectionsEditorEditTextImpl _value,
      $Res Function(_$DirectionsEditorEditTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? newText = null,
  }) {
    return _then(_$DirectionsEditorEditTextImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
      newText: null == newText
          ? _value.newText
          : newText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectionsEditorEditTextImpl implements _DirectionsEditorEditText {
  const _$DirectionsEditorEditTextImpl(
      {required this.direction, required this.newText});

  @override
  final int direction;
  @override
  final String newText;

  @override
  String toString() {
    return 'DirectionsEditorEvent.editText(direction: $direction, newText: $newText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorEditTextImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.newText, newText) || other.newText == newText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, newText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionsEditorEditTextImplCopyWith<_$DirectionsEditorEditTextImpl>
      get copyWith => __$$DirectionsEditorEditTextImplCopyWithImpl<
          _$DirectionsEditorEditTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) {
    return editText(direction, newText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) {
    return editText?.call(direction, newText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (editText != null) {
      return editText(direction, newText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) {
    return editText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) {
    return editText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) {
    if (editText != null) {
      return editText(this);
    }
    return orElse();
  }
}

abstract class _DirectionsEditorEditText implements DirectionsEditorEvent {
  const factory _DirectionsEditorEditText(
      {required final int direction,
      required final String newText}) = _$DirectionsEditorEditTextImpl;

  int get direction;
  String get newText;
  @JsonKey(ignore: true)
  _$$DirectionsEditorEditTextImplCopyWith<_$DirectionsEditorEditTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectionsEditorDeleteImageImplCopyWith<$Res> {
  factory _$$DirectionsEditorDeleteImageImplCopyWith(
          _$DirectionsEditorDeleteImageImpl value,
          $Res Function(_$DirectionsEditorDeleteImageImpl) then) =
      __$$DirectionsEditorDeleteImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int direction, int image});
}

/// @nodoc
class __$$DirectionsEditorDeleteImageImplCopyWithImpl<$Res>
    extends _$DirectionsEditorEventCopyWithImpl<$Res,
        _$DirectionsEditorDeleteImageImpl>
    implements _$$DirectionsEditorDeleteImageImplCopyWith<$Res> {
  __$$DirectionsEditorDeleteImageImplCopyWithImpl(
      _$DirectionsEditorDeleteImageImpl _value,
      $Res Function(_$DirectionsEditorDeleteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? image = null,
  }) {
    return _then(_$DirectionsEditorDeleteImageImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DirectionsEditorDeleteImageImpl
    implements _DirectionsEditorDeleteImage {
  const _$DirectionsEditorDeleteImageImpl(
      {required this.direction, required this.image});

  @override
  final int direction;
  @override
  final int image;

  @override
  String toString() {
    return 'DirectionsEditorEvent.deleteImage(direction: $direction, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorDeleteImageImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionsEditorDeleteImageImplCopyWith<_$DirectionsEditorDeleteImageImpl>
      get copyWith => __$$DirectionsEditorDeleteImageImplCopyWithImpl<
          _$DirectionsEditorDeleteImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) {
    return deleteImage(direction, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) {
    return deleteImage?.call(direction, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(direction, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) {
    return deleteImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) {
    return deleteImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(this);
    }
    return orElse();
  }
}

abstract class _DirectionsEditorDeleteImage implements DirectionsEditorEvent {
  const factory _DirectionsEditorDeleteImage(
      {required final int direction,
      required final int image}) = _$DirectionsEditorDeleteImageImpl;

  int get direction;
  int get image;
  @JsonKey(ignore: true)
  _$$DirectionsEditorDeleteImageImplCopyWith<_$DirectionsEditorDeleteImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectionsEditorAddImageImplCopyWith<$Res> {
  factory _$$DirectionsEditorAddImageImplCopyWith(
          _$DirectionsEditorAddImageImpl value,
          $Res Function(_$DirectionsEditorAddImageImpl) then) =
      __$$DirectionsEditorAddImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int direction, XFile image});
}

/// @nodoc
class __$$DirectionsEditorAddImageImplCopyWithImpl<$Res>
    extends _$DirectionsEditorEventCopyWithImpl<$Res,
        _$DirectionsEditorAddImageImpl>
    implements _$$DirectionsEditorAddImageImplCopyWith<$Res> {
  __$$DirectionsEditorAddImageImplCopyWithImpl(
      _$DirectionsEditorAddImageImpl _value,
      $Res Function(_$DirectionsEditorAddImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? image = null,
  }) {
    return _then(_$DirectionsEditorAddImageImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$DirectionsEditorAddImageImpl implements _DirectionsEditorAddImage {
  const _$DirectionsEditorAddImageImpl(
      {required this.direction, required this.image});

  @override
  final int direction;
  @override
  final XFile image;

  @override
  String toString() {
    return 'DirectionsEditorEvent.addImage(direction: $direction, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorAddImageImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionsEditorAddImageImplCopyWith<_$DirectionsEditorAddImageImpl>
      get copyWith => __$$DirectionsEditorAddImageImplCopyWithImpl<
          _$DirectionsEditorAddImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) {
    return addImage(direction, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) {
    return addImage?.call(direction, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(direction, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) {
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) {
    return addImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class _DirectionsEditorAddImage implements DirectionsEditorEvent {
  const factory _DirectionsEditorAddImage(
      {required final int direction,
      required final XFile image}) = _$DirectionsEditorAddImageImpl;

  int get direction;
  XFile get image;
  @JsonKey(ignore: true)
  _$$DirectionsEditorAddImageImplCopyWith<_$DirectionsEditorAddImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectionsEditorDeleteImplCopyWith<$Res> {
  factory _$$DirectionsEditorDeleteImplCopyWith(
          _$DirectionsEditorDeleteImpl value,
          $Res Function(_$DirectionsEditorDeleteImpl) then) =
      __$$DirectionsEditorDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DirectionsEditorDeleteImplCopyWithImpl<$Res>
    extends _$DirectionsEditorEventCopyWithImpl<$Res,
        _$DirectionsEditorDeleteImpl>
    implements _$$DirectionsEditorDeleteImplCopyWith<$Res> {
  __$$DirectionsEditorDeleteImplCopyWithImpl(
      _$DirectionsEditorDeleteImpl _value,
      $Res Function(_$DirectionsEditorDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DirectionsEditorDeleteImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DirectionsEditorDeleteImpl implements _DirectionsEditorDelete {
  const _$DirectionsEditorDeleteImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DirectionsEditorEvent.delete(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorDeleteImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionsEditorDeleteImplCopyWith<_$DirectionsEditorDeleteImpl>
      get copyWith => __$$DirectionsEditorDeleteImplCopyWithImpl<
          _$DirectionsEditorDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) {
    return delete(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) {
    return delete?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DirectionsEditorDelete implements DirectionsEditorEvent {
  const factory _DirectionsEditorDelete(final int index) =
      _$DirectionsEditorDeleteImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DirectionsEditorDeleteImplCopyWith<_$DirectionsEditorDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectionsEditorLoadImplCopyWith<$Res> {
  factory _$$DirectionsEditorLoadImplCopyWith(_$DirectionsEditorLoadImpl value,
          $Res Function(_$DirectionsEditorLoadImpl) then) =
      __$$DirectionsEditorLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeDirectionModel> directions});
}

/// @nodoc
class __$$DirectionsEditorLoadImplCopyWithImpl<$Res>
    extends _$DirectionsEditorEventCopyWithImpl<$Res,
        _$DirectionsEditorLoadImpl>
    implements _$$DirectionsEditorLoadImplCopyWith<$Res> {
  __$$DirectionsEditorLoadImplCopyWithImpl(_$DirectionsEditorLoadImpl _value,
      $Res Function(_$DirectionsEditorLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directions = null,
  }) {
    return _then(_$DirectionsEditorLoadImpl(
      null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<RecipeDirectionModel>,
    ));
  }
}

/// @nodoc

class _$DirectionsEditorLoadImpl implements DirectionsEditorLoad {
  const _$DirectionsEditorLoadImpl(final List<RecipeDirectionModel> directions)
      : _directions = directions;

  final List<RecipeDirectionModel> _directions;
  @override
  List<RecipeDirectionModel> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  String toString() {
    return 'DirectionsEditorEvent.load(directions: $directions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorLoadImpl &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_directions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionsEditorLoadImplCopyWith<_$DirectionsEditorLoadImpl>
      get copyWith =>
          __$$DirectionsEditorLoadImplCopyWithImpl<_$DirectionsEditorLoadImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) {
    return load(directions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) {
    return load?.call(directions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(directions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class DirectionsEditorLoad implements DirectionsEditorEvent {
  const factory DirectionsEditorLoad(
      final List<RecipeDirectionModel> directions) = _$DirectionsEditorLoadImpl;

  List<RecipeDirectionModel> get directions;
  @JsonKey(ignore: true)
  _$$DirectionsEditorLoadImplCopyWith<_$DirectionsEditorLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectionsEditorClearImplCopyWith<$Res> {
  factory _$$DirectionsEditorClearImplCopyWith(
          _$DirectionsEditorClearImpl value,
          $Res Function(_$DirectionsEditorClearImpl) then) =
      __$$DirectionsEditorClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DirectionsEditorClearImplCopyWithImpl<$Res>
    extends _$DirectionsEditorEventCopyWithImpl<$Res,
        _$DirectionsEditorClearImpl>
    implements _$$DirectionsEditorClearImplCopyWith<$Res> {
  __$$DirectionsEditorClearImplCopyWithImpl(_$DirectionsEditorClearImpl _value,
      $Res Function(_$DirectionsEditorClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DirectionsEditorClearImpl implements DirectionsEditorClear {
  const _$DirectionsEditorClearImpl();

  @override
  String toString() {
    return 'DirectionsEditorEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() add,
    required TResult Function(int direction, String newText) editText,
    required TResult Function(int direction, int image) deleteImage,
    required TResult Function(int direction, XFile image) addImage,
    required TResult Function(int index) delete,
    required TResult Function(List<RecipeDirectionModel> directions) load,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? add,
    TResult? Function(int direction, String newText)? editText,
    TResult? Function(int direction, int image)? deleteImage,
    TResult? Function(int direction, XFile image)? addImage,
    TResult? Function(int index)? delete,
    TResult? Function(List<RecipeDirectionModel> directions)? load,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? add,
    TResult Function(int direction, String newText)? editText,
    TResult Function(int direction, int image)? deleteImage,
    TResult Function(int direction, XFile image)? addImage,
    TResult Function(int index)? delete,
    TResult Function(List<RecipeDirectionModel> directions)? load,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectionsEditorAdd value) add,
    required TResult Function(_DirectionsEditorEditText value) editText,
    required TResult Function(_DirectionsEditorDeleteImage value) deleteImage,
    required TResult Function(_DirectionsEditorAddImage value) addImage,
    required TResult Function(_DirectionsEditorDelete value) delete,
    required TResult Function(DirectionsEditorLoad value) load,
    required TResult Function(DirectionsEditorClear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectionsEditorAdd value)? add,
    TResult? Function(_DirectionsEditorEditText value)? editText,
    TResult? Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult? Function(_DirectionsEditorAddImage value)? addImage,
    TResult? Function(_DirectionsEditorDelete value)? delete,
    TResult? Function(DirectionsEditorLoad value)? load,
    TResult? Function(DirectionsEditorClear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectionsEditorAdd value)? add,
    TResult Function(_DirectionsEditorEditText value)? editText,
    TResult Function(_DirectionsEditorDeleteImage value)? deleteImage,
    TResult Function(_DirectionsEditorAddImage value)? addImage,
    TResult Function(_DirectionsEditorDelete value)? delete,
    TResult Function(DirectionsEditorLoad value)? load,
    TResult Function(DirectionsEditorClear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class DirectionsEditorClear implements DirectionsEditorEvent {
  const factory DirectionsEditorClear() = _$DirectionsEditorClearImpl;
}

/// @nodoc
mixin _$DirectionsEditorState {
  List<DirectionsEditorItemViewModel> get directions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectionsEditorStateCopyWith<DirectionsEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsEditorStateCopyWith<$Res> {
  factory $DirectionsEditorStateCopyWith(DirectionsEditorState value,
          $Res Function(DirectionsEditorState) then) =
      _$DirectionsEditorStateCopyWithImpl<$Res, DirectionsEditorState>;
  @useResult
  $Res call({List<DirectionsEditorItemViewModel> directions});
}

/// @nodoc
class _$DirectionsEditorStateCopyWithImpl<$Res,
        $Val extends DirectionsEditorState>
    implements $DirectionsEditorStateCopyWith<$Res> {
  _$DirectionsEditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directions = null,
  }) {
    return _then(_value.copyWith(
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<DirectionsEditorItemViewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectionsEditorStateImplCopyWith<$Res>
    implements $DirectionsEditorStateCopyWith<$Res> {
  factory _$$DirectionsEditorStateImplCopyWith(
          _$DirectionsEditorStateImpl value,
          $Res Function(_$DirectionsEditorStateImpl) then) =
      __$$DirectionsEditorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DirectionsEditorItemViewModel> directions});
}

/// @nodoc
class __$$DirectionsEditorStateImplCopyWithImpl<$Res>
    extends _$DirectionsEditorStateCopyWithImpl<$Res,
        _$DirectionsEditorStateImpl>
    implements _$$DirectionsEditorStateImplCopyWith<$Res> {
  __$$DirectionsEditorStateImplCopyWithImpl(_$DirectionsEditorStateImpl _value,
      $Res Function(_$DirectionsEditorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directions = null,
  }) {
    return _then(_$DirectionsEditorStateImpl(
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<DirectionsEditorItemViewModel>,
    ));
  }
}

/// @nodoc

class _$DirectionsEditorStateImpl implements _DirectionsEditorState {
  const _$DirectionsEditorStateImpl(
      {final List<DirectionsEditorItemViewModel> directions = const []})
      : _directions = directions;

  final List<DirectionsEditorItemViewModel> _directions;
  @override
  @JsonKey()
  List<DirectionsEditorItemViewModel> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  String toString() {
    return 'DirectionsEditorState(directions: $directions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsEditorStateImpl &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_directions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionsEditorStateImplCopyWith<_$DirectionsEditorStateImpl>
      get copyWith => __$$DirectionsEditorStateImplCopyWithImpl<
          _$DirectionsEditorStateImpl>(this, _$identity);
}

abstract class _DirectionsEditorState implements DirectionsEditorState {
  const factory _DirectionsEditorState(
          {final List<DirectionsEditorItemViewModel> directions}) =
      _$DirectionsEditorStateImpl;

  @override
  List<DirectionsEditorItemViewModel> get directions;
  @override
  @JsonKey(ignore: true)
  _$$DirectionsEditorStateImplCopyWith<_$DirectionsEditorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
