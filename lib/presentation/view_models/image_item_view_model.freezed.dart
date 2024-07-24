// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_item_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageItemViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageId) id,
    required TResult Function(XFile imageXfile) xfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageId)? id,
    TResult? Function(XFile imageXfile)? xfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageId)? id,
    TResult Function(XFile imageXfile)? xfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIdItemViewModel value) id,
    required TResult Function(ImageXfileItemViewModel value) xfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIdItemViewModel value)? id,
    TResult? Function(ImageXfileItemViewModel value)? xfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIdItemViewModel value)? id,
    TResult Function(ImageXfileItemViewModel value)? xfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageItemViewModelCopyWith<$Res> {
  factory $ImageItemViewModelCopyWith(
          ImageItemViewModel value, $Res Function(ImageItemViewModel) then) =
      _$ImageItemViewModelCopyWithImpl<$Res, ImageItemViewModel>;
}

/// @nodoc
class _$ImageItemViewModelCopyWithImpl<$Res, $Val extends ImageItemViewModel>
    implements $ImageItemViewModelCopyWith<$Res> {
  _$ImageItemViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageIdItemViewModelImplCopyWith<$Res> {
  factory _$$ImageIdItemViewModelImplCopyWith(_$ImageIdItemViewModelImpl value,
          $Res Function(_$ImageIdItemViewModelImpl) then) =
      __$$ImageIdItemViewModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageId});
}

/// @nodoc
class __$$ImageIdItemViewModelImplCopyWithImpl<$Res>
    extends _$ImageItemViewModelCopyWithImpl<$Res, _$ImageIdItemViewModelImpl>
    implements _$$ImageIdItemViewModelImplCopyWith<$Res> {
  __$$ImageIdItemViewModelImplCopyWithImpl(_$ImageIdItemViewModelImpl _value,
      $Res Function(_$ImageIdItemViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
  }) {
    return _then(_$ImageIdItemViewModelImpl(
      null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageIdItemViewModelImpl implements ImageIdItemViewModel {
  const _$ImageIdItemViewModelImpl(this.imageId);

  @override
  final String imageId;

  @override
  String toString() {
    return 'ImageItemViewModel.id(imageId: $imageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageIdItemViewModelImpl &&
            (identical(other.imageId, imageId) || other.imageId == imageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageIdItemViewModelImplCopyWith<_$ImageIdItemViewModelImpl>
      get copyWith =>
          __$$ImageIdItemViewModelImplCopyWithImpl<_$ImageIdItemViewModelImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageId) id,
    required TResult Function(XFile imageXfile) xfile,
  }) {
    return id(imageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageId)? id,
    TResult? Function(XFile imageXfile)? xfile,
  }) {
    return id?.call(imageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageId)? id,
    TResult Function(XFile imageXfile)? xfile,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(imageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIdItemViewModel value) id,
    required TResult Function(ImageXfileItemViewModel value) xfile,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIdItemViewModel value)? id,
    TResult? Function(ImageXfileItemViewModel value)? xfile,
  }) {
    return id?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIdItemViewModel value)? id,
    TResult Function(ImageXfileItemViewModel value)? xfile,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }
}

abstract class ImageIdItemViewModel implements ImageItemViewModel {
  const factory ImageIdItemViewModel(final String imageId) =
      _$ImageIdItemViewModelImpl;

  String get imageId;
  @JsonKey(ignore: true)
  _$$ImageIdItemViewModelImplCopyWith<_$ImageIdItemViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageXfileItemViewModelImplCopyWith<$Res> {
  factory _$$ImageXfileItemViewModelImplCopyWith(
          _$ImageXfileItemViewModelImpl value,
          $Res Function(_$ImageXfileItemViewModelImpl) then) =
      __$$ImageXfileItemViewModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile imageXfile});
}

/// @nodoc
class __$$ImageXfileItemViewModelImplCopyWithImpl<$Res>
    extends _$ImageItemViewModelCopyWithImpl<$Res,
        _$ImageXfileItemViewModelImpl>
    implements _$$ImageXfileItemViewModelImplCopyWith<$Res> {
  __$$ImageXfileItemViewModelImplCopyWithImpl(
      _$ImageXfileItemViewModelImpl _value,
      $Res Function(_$ImageXfileItemViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageXfile = null,
  }) {
    return _then(_$ImageXfileItemViewModelImpl(
      null == imageXfile
          ? _value.imageXfile
          : imageXfile // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$ImageXfileItemViewModelImpl implements ImageXfileItemViewModel {
  const _$ImageXfileItemViewModelImpl(this.imageXfile);

  @override
  final XFile imageXfile;

  @override
  String toString() {
    return 'ImageItemViewModel.xfile(imageXfile: $imageXfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageXfileItemViewModelImpl &&
            (identical(other.imageXfile, imageXfile) ||
                other.imageXfile == imageXfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageXfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageXfileItemViewModelImplCopyWith<_$ImageXfileItemViewModelImpl>
      get copyWith => __$$ImageXfileItemViewModelImplCopyWithImpl<
          _$ImageXfileItemViewModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageId) id,
    required TResult Function(XFile imageXfile) xfile,
  }) {
    return xfile(imageXfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageId)? id,
    TResult? Function(XFile imageXfile)? xfile,
  }) {
    return xfile?.call(imageXfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageId)? id,
    TResult Function(XFile imageXfile)? xfile,
    required TResult orElse(),
  }) {
    if (xfile != null) {
      return xfile(imageXfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageIdItemViewModel value) id,
    required TResult Function(ImageXfileItemViewModel value) xfile,
  }) {
    return xfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageIdItemViewModel value)? id,
    TResult? Function(ImageXfileItemViewModel value)? xfile,
  }) {
    return xfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageIdItemViewModel value)? id,
    TResult Function(ImageXfileItemViewModel value)? xfile,
    required TResult orElse(),
  }) {
    if (xfile != null) {
      return xfile(this);
    }
    return orElse();
  }
}

abstract class ImageXfileItemViewModel implements ImageItemViewModel {
  const factory ImageXfileItemViewModel(final XFile imageXfile) =
      _$ImageXfileItemViewModelImpl;

  XFile get imageXfile;
  @JsonKey(ignore: true)
  _$$ImageXfileItemViewModelImplCopyWith<_$ImageXfileItemViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
