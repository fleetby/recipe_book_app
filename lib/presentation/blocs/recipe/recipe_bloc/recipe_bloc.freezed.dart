// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() save,
    required TResult Function() unsave,
    required TResult Function() followAuthor,
    required TResult Function() unfollowAuthor,
    required TResult Function(bool followed) setAuthorFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? save,
    TResult? Function()? unsave,
    TResult? Function()? followAuthor,
    TResult? Function()? unfollowAuthor,
    TResult? Function(bool followed)? setAuthorFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? save,
    TResult Function()? unsave,
    TResult Function()? followAuthor,
    TResult Function()? unfollowAuthor,
    TResult Function(bool followed)? setAuthorFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoad value) load,
    required TResult Function(RecipeSave value) save,
    required TResult Function(RecipeUnsave value) unsave,
    required TResult Function(RecipeFollowAuthor value) followAuthor,
    required TResult Function(RecipeUnfollowAuthor value) unfollowAuthor,
    required TResult Function(RecipeSetAuthorFollowed value) setAuthorFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoad value)? load,
    TResult? Function(RecipeSave value)? save,
    TResult? Function(RecipeUnsave value)? unsave,
    TResult? Function(RecipeFollowAuthor value)? followAuthor,
    TResult? Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult? Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoad value)? load,
    TResult Function(RecipeSave value)? save,
    TResult Function(RecipeUnsave value)? unsave,
    TResult Function(RecipeFollowAuthor value)? followAuthor,
    TResult Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res, RecipeEvent>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res, $Val extends RecipeEvent>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipeLoadImplCopyWith<$Res> {
  factory _$$RecipeLoadImplCopyWith(
          _$RecipeLoadImpl value, $Res Function(_$RecipeLoadImpl) then) =
      __$$RecipeLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RecipeLoadImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$RecipeLoadImpl>
    implements _$$RecipeLoadImplCopyWith<$Res> {
  __$$RecipeLoadImplCopyWithImpl(
      _$RecipeLoadImpl _value, $Res Function(_$RecipeLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RecipeLoadImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecipeLoadImpl implements RecipeLoad {
  const _$RecipeLoadImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'RecipeEvent.load(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeLoadImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeLoadImplCopyWith<_$RecipeLoadImpl> get copyWith =>
      __$$RecipeLoadImplCopyWithImpl<_$RecipeLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() save,
    required TResult Function() unsave,
    required TResult Function() followAuthor,
    required TResult Function() unfollowAuthor,
    required TResult Function(bool followed) setAuthorFollowed,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? save,
    TResult? Function()? unsave,
    TResult? Function()? followAuthor,
    TResult? Function()? unfollowAuthor,
    TResult? Function(bool followed)? setAuthorFollowed,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? save,
    TResult Function()? unsave,
    TResult Function()? followAuthor,
    TResult Function()? unfollowAuthor,
    TResult Function(bool followed)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoad value) load,
    required TResult Function(RecipeSave value) save,
    required TResult Function(RecipeUnsave value) unsave,
    required TResult Function(RecipeFollowAuthor value) followAuthor,
    required TResult Function(RecipeUnfollowAuthor value) unfollowAuthor,
    required TResult Function(RecipeSetAuthorFollowed value) setAuthorFollowed,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoad value)? load,
    TResult? Function(RecipeSave value)? save,
    TResult? Function(RecipeUnsave value)? unsave,
    TResult? Function(RecipeFollowAuthor value)? followAuthor,
    TResult? Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult? Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoad value)? load,
    TResult Function(RecipeSave value)? save,
    TResult Function(RecipeUnsave value)? unsave,
    TResult Function(RecipeFollowAuthor value)? followAuthor,
    TResult Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class RecipeLoad implements RecipeEvent {
  const factory RecipeLoad(final int id) = _$RecipeLoadImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RecipeLoadImplCopyWith<_$RecipeLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeSaveImplCopyWith<$Res> {
  factory _$$RecipeSaveImplCopyWith(
          _$RecipeSaveImpl value, $Res Function(_$RecipeSaveImpl) then) =
      __$$RecipeSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeSaveImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$RecipeSaveImpl>
    implements _$$RecipeSaveImplCopyWith<$Res> {
  __$$RecipeSaveImplCopyWithImpl(
      _$RecipeSaveImpl _value, $Res Function(_$RecipeSaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeSaveImpl implements RecipeSave {
  const _$RecipeSaveImpl();

  @override
  String toString() {
    return 'RecipeEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() save,
    required TResult Function() unsave,
    required TResult Function() followAuthor,
    required TResult Function() unfollowAuthor,
    required TResult Function(bool followed) setAuthorFollowed,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? save,
    TResult? Function()? unsave,
    TResult? Function()? followAuthor,
    TResult? Function()? unfollowAuthor,
    TResult? Function(bool followed)? setAuthorFollowed,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? save,
    TResult Function()? unsave,
    TResult Function()? followAuthor,
    TResult Function()? unfollowAuthor,
    TResult Function(bool followed)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoad value) load,
    required TResult Function(RecipeSave value) save,
    required TResult Function(RecipeUnsave value) unsave,
    required TResult Function(RecipeFollowAuthor value) followAuthor,
    required TResult Function(RecipeUnfollowAuthor value) unfollowAuthor,
    required TResult Function(RecipeSetAuthorFollowed value) setAuthorFollowed,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoad value)? load,
    TResult? Function(RecipeSave value)? save,
    TResult? Function(RecipeUnsave value)? unsave,
    TResult? Function(RecipeFollowAuthor value)? followAuthor,
    TResult? Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult? Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoad value)? load,
    TResult Function(RecipeSave value)? save,
    TResult Function(RecipeUnsave value)? unsave,
    TResult Function(RecipeFollowAuthor value)? followAuthor,
    TResult Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class RecipeSave implements RecipeEvent {
  const factory RecipeSave() = _$RecipeSaveImpl;
}

/// @nodoc
abstract class _$$RecipeUnsaveImplCopyWith<$Res> {
  factory _$$RecipeUnsaveImplCopyWith(
          _$RecipeUnsaveImpl value, $Res Function(_$RecipeUnsaveImpl) then) =
      __$$RecipeUnsaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeUnsaveImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$RecipeUnsaveImpl>
    implements _$$RecipeUnsaveImplCopyWith<$Res> {
  __$$RecipeUnsaveImplCopyWithImpl(
      _$RecipeUnsaveImpl _value, $Res Function(_$RecipeUnsaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeUnsaveImpl implements RecipeUnsave {
  const _$RecipeUnsaveImpl();

  @override
  String toString() {
    return 'RecipeEvent.unsave()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeUnsaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() save,
    required TResult Function() unsave,
    required TResult Function() followAuthor,
    required TResult Function() unfollowAuthor,
    required TResult Function(bool followed) setAuthorFollowed,
  }) {
    return unsave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? save,
    TResult? Function()? unsave,
    TResult? Function()? followAuthor,
    TResult? Function()? unfollowAuthor,
    TResult? Function(bool followed)? setAuthorFollowed,
  }) {
    return unsave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? save,
    TResult Function()? unsave,
    TResult Function()? followAuthor,
    TResult Function()? unfollowAuthor,
    TResult Function(bool followed)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (unsave != null) {
      return unsave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoad value) load,
    required TResult Function(RecipeSave value) save,
    required TResult Function(RecipeUnsave value) unsave,
    required TResult Function(RecipeFollowAuthor value) followAuthor,
    required TResult Function(RecipeUnfollowAuthor value) unfollowAuthor,
    required TResult Function(RecipeSetAuthorFollowed value) setAuthorFollowed,
  }) {
    return unsave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoad value)? load,
    TResult? Function(RecipeSave value)? save,
    TResult? Function(RecipeUnsave value)? unsave,
    TResult? Function(RecipeFollowAuthor value)? followAuthor,
    TResult? Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult? Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
  }) {
    return unsave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoad value)? load,
    TResult Function(RecipeSave value)? save,
    TResult Function(RecipeUnsave value)? unsave,
    TResult Function(RecipeFollowAuthor value)? followAuthor,
    TResult Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (unsave != null) {
      return unsave(this);
    }
    return orElse();
  }
}

abstract class RecipeUnsave implements RecipeEvent {
  const factory RecipeUnsave() = _$RecipeUnsaveImpl;
}

/// @nodoc
abstract class _$$RecipeFollowAuthorImplCopyWith<$Res> {
  factory _$$RecipeFollowAuthorImplCopyWith(_$RecipeFollowAuthorImpl value,
          $Res Function(_$RecipeFollowAuthorImpl) then) =
      __$$RecipeFollowAuthorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeFollowAuthorImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$RecipeFollowAuthorImpl>
    implements _$$RecipeFollowAuthorImplCopyWith<$Res> {
  __$$RecipeFollowAuthorImplCopyWithImpl(_$RecipeFollowAuthorImpl _value,
      $Res Function(_$RecipeFollowAuthorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeFollowAuthorImpl implements RecipeFollowAuthor {
  const _$RecipeFollowAuthorImpl();

  @override
  String toString() {
    return 'RecipeEvent.followAuthor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeFollowAuthorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() save,
    required TResult Function() unsave,
    required TResult Function() followAuthor,
    required TResult Function() unfollowAuthor,
    required TResult Function(bool followed) setAuthorFollowed,
  }) {
    return followAuthor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? save,
    TResult? Function()? unsave,
    TResult? Function()? followAuthor,
    TResult? Function()? unfollowAuthor,
    TResult? Function(bool followed)? setAuthorFollowed,
  }) {
    return followAuthor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? save,
    TResult Function()? unsave,
    TResult Function()? followAuthor,
    TResult Function()? unfollowAuthor,
    TResult Function(bool followed)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (followAuthor != null) {
      return followAuthor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoad value) load,
    required TResult Function(RecipeSave value) save,
    required TResult Function(RecipeUnsave value) unsave,
    required TResult Function(RecipeFollowAuthor value) followAuthor,
    required TResult Function(RecipeUnfollowAuthor value) unfollowAuthor,
    required TResult Function(RecipeSetAuthorFollowed value) setAuthorFollowed,
  }) {
    return followAuthor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoad value)? load,
    TResult? Function(RecipeSave value)? save,
    TResult? Function(RecipeUnsave value)? unsave,
    TResult? Function(RecipeFollowAuthor value)? followAuthor,
    TResult? Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult? Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
  }) {
    return followAuthor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoad value)? load,
    TResult Function(RecipeSave value)? save,
    TResult Function(RecipeUnsave value)? unsave,
    TResult Function(RecipeFollowAuthor value)? followAuthor,
    TResult Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (followAuthor != null) {
      return followAuthor(this);
    }
    return orElse();
  }
}

abstract class RecipeFollowAuthor implements RecipeEvent {
  const factory RecipeFollowAuthor() = _$RecipeFollowAuthorImpl;
}

/// @nodoc
abstract class _$$RecipeUnfollowAuthorImplCopyWith<$Res> {
  factory _$$RecipeUnfollowAuthorImplCopyWith(_$RecipeUnfollowAuthorImpl value,
          $Res Function(_$RecipeUnfollowAuthorImpl) then) =
      __$$RecipeUnfollowAuthorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeUnfollowAuthorImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$RecipeUnfollowAuthorImpl>
    implements _$$RecipeUnfollowAuthorImplCopyWith<$Res> {
  __$$RecipeUnfollowAuthorImplCopyWithImpl(_$RecipeUnfollowAuthorImpl _value,
      $Res Function(_$RecipeUnfollowAuthorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeUnfollowAuthorImpl implements RecipeUnfollowAuthor {
  const _$RecipeUnfollowAuthorImpl();

  @override
  String toString() {
    return 'RecipeEvent.unfollowAuthor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeUnfollowAuthorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() save,
    required TResult Function() unsave,
    required TResult Function() followAuthor,
    required TResult Function() unfollowAuthor,
    required TResult Function(bool followed) setAuthorFollowed,
  }) {
    return unfollowAuthor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? save,
    TResult? Function()? unsave,
    TResult? Function()? followAuthor,
    TResult? Function()? unfollowAuthor,
    TResult? Function(bool followed)? setAuthorFollowed,
  }) {
    return unfollowAuthor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? save,
    TResult Function()? unsave,
    TResult Function()? followAuthor,
    TResult Function()? unfollowAuthor,
    TResult Function(bool followed)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (unfollowAuthor != null) {
      return unfollowAuthor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoad value) load,
    required TResult Function(RecipeSave value) save,
    required TResult Function(RecipeUnsave value) unsave,
    required TResult Function(RecipeFollowAuthor value) followAuthor,
    required TResult Function(RecipeUnfollowAuthor value) unfollowAuthor,
    required TResult Function(RecipeSetAuthorFollowed value) setAuthorFollowed,
  }) {
    return unfollowAuthor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoad value)? load,
    TResult? Function(RecipeSave value)? save,
    TResult? Function(RecipeUnsave value)? unsave,
    TResult? Function(RecipeFollowAuthor value)? followAuthor,
    TResult? Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult? Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
  }) {
    return unfollowAuthor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoad value)? load,
    TResult Function(RecipeSave value)? save,
    TResult Function(RecipeUnsave value)? unsave,
    TResult Function(RecipeFollowAuthor value)? followAuthor,
    TResult Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (unfollowAuthor != null) {
      return unfollowAuthor(this);
    }
    return orElse();
  }
}

abstract class RecipeUnfollowAuthor implements RecipeEvent {
  const factory RecipeUnfollowAuthor() = _$RecipeUnfollowAuthorImpl;
}

/// @nodoc
abstract class _$$RecipeSetAuthorFollowedImplCopyWith<$Res> {
  factory _$$RecipeSetAuthorFollowedImplCopyWith(
          _$RecipeSetAuthorFollowedImpl value,
          $Res Function(_$RecipeSetAuthorFollowedImpl) then) =
      __$$RecipeSetAuthorFollowedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool followed});
}

/// @nodoc
class __$$RecipeSetAuthorFollowedImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$RecipeSetAuthorFollowedImpl>
    implements _$$RecipeSetAuthorFollowedImplCopyWith<$Res> {
  __$$RecipeSetAuthorFollowedImplCopyWithImpl(
      _$RecipeSetAuthorFollowedImpl _value,
      $Res Function(_$RecipeSetAuthorFollowedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followed = null,
  }) {
    return _then(_$RecipeSetAuthorFollowedImpl(
      null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeSetAuthorFollowedImpl implements RecipeSetAuthorFollowed {
  const _$RecipeSetAuthorFollowedImpl(this.followed);

  @override
  final bool followed;

  @override
  String toString() {
    return 'RecipeEvent.setAuthorFollowed(followed: $followed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeSetAuthorFollowedImpl &&
            (identical(other.followed, followed) ||
                other.followed == followed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeSetAuthorFollowedImplCopyWith<_$RecipeSetAuthorFollowedImpl>
      get copyWith => __$$RecipeSetAuthorFollowedImplCopyWithImpl<
          _$RecipeSetAuthorFollowedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function() save,
    required TResult Function() unsave,
    required TResult Function() followAuthor,
    required TResult Function() unfollowAuthor,
    required TResult Function(bool followed) setAuthorFollowed,
  }) {
    return setAuthorFollowed(followed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function()? save,
    TResult? Function()? unsave,
    TResult? Function()? followAuthor,
    TResult? Function()? unfollowAuthor,
    TResult? Function(bool followed)? setAuthorFollowed,
  }) {
    return setAuthorFollowed?.call(followed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function()? save,
    TResult Function()? unsave,
    TResult Function()? followAuthor,
    TResult Function()? unfollowAuthor,
    TResult Function(bool followed)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (setAuthorFollowed != null) {
      return setAuthorFollowed(followed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoad value) load,
    required TResult Function(RecipeSave value) save,
    required TResult Function(RecipeUnsave value) unsave,
    required TResult Function(RecipeFollowAuthor value) followAuthor,
    required TResult Function(RecipeUnfollowAuthor value) unfollowAuthor,
    required TResult Function(RecipeSetAuthorFollowed value) setAuthorFollowed,
  }) {
    return setAuthorFollowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoad value)? load,
    TResult? Function(RecipeSave value)? save,
    TResult? Function(RecipeUnsave value)? unsave,
    TResult? Function(RecipeFollowAuthor value)? followAuthor,
    TResult? Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult? Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
  }) {
    return setAuthorFollowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoad value)? load,
    TResult Function(RecipeSave value)? save,
    TResult Function(RecipeUnsave value)? unsave,
    TResult Function(RecipeFollowAuthor value)? followAuthor,
    TResult Function(RecipeUnfollowAuthor value)? unfollowAuthor,
    TResult Function(RecipeSetAuthorFollowed value)? setAuthorFollowed,
    required TResult orElse(),
  }) {
    if (setAuthorFollowed != null) {
      return setAuthorFollowed(this);
    }
    return orElse();
  }
}

abstract class RecipeSetAuthorFollowed implements RecipeEvent {
  const factory RecipeSetAuthorFollowed(final bool followed) =
      _$RecipeSetAuthorFollowedImpl;

  bool get followed;
  @JsonKey(ignore: true)
  _$$RecipeSetAuthorFollowedImplCopyWith<_$RecipeSetAuthorFollowedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeState {
  RecipeViewModel? get recipe => throw _privateConstructorUsedError;
  bool? get isSaved => throw _privateConstructorUsedError;
  bool? get isAuthorFollowed => throw _privateConstructorUsedError;
  bool? get canEdit => throw _privateConstructorUsedError;
  String? get authenticatedUserAvatar => throw _privateConstructorUsedError;
  (Object, StackTrace)? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
  @useResult
  $Res call(
      {RecipeViewModel? recipe,
      bool? isSaved,
      bool? isAuthorFollowed,
      bool? canEdit,
      String? authenticatedUserAvatar,
      (Object, StackTrace)? error});

  $RecipeViewModelCopyWith<$Res>? get recipe;
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = freezed,
    Object? isSaved = freezed,
    Object? isAuthorFollowed = freezed,
    Object? canEdit = freezed,
    Object? authenticatedUserAvatar = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeViewModel?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthorFollowed: freezed == isAuthorFollowed
          ? _value.isAuthorFollowed
          : isAuthorFollowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEdit: freezed == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      authenticatedUserAvatar: freezed == authenticatedUserAvatar
          ? _value.authenticatedUserAvatar
          : authenticatedUserAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeViewModelCopyWith<$Res>? get recipe {
    if (_value.recipe == null) {
      return null;
    }

    return $RecipeViewModelCopyWith<$Res>(_value.recipe!, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeStateImplCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$$RecipeStateImplCopyWith(
          _$RecipeStateImpl value, $Res Function(_$RecipeStateImpl) then) =
      __$$RecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecipeViewModel? recipe,
      bool? isSaved,
      bool? isAuthorFollowed,
      bool? canEdit,
      String? authenticatedUserAvatar,
      (Object, StackTrace)? error});

  @override
  $RecipeViewModelCopyWith<$Res>? get recipe;
}

/// @nodoc
class __$$RecipeStateImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeStateImpl>
    implements _$$RecipeStateImplCopyWith<$Res> {
  __$$RecipeStateImplCopyWithImpl(
      _$RecipeStateImpl _value, $Res Function(_$RecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = freezed,
    Object? isSaved = freezed,
    Object? isAuthorFollowed = freezed,
    Object? canEdit = freezed,
    Object? authenticatedUserAvatar = freezed,
    Object? error = freezed,
  }) {
    return _then(_$RecipeStateImpl(
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeViewModel?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthorFollowed: freezed == isAuthorFollowed
          ? _value.isAuthorFollowed
          : isAuthorFollowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEdit: freezed == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      authenticatedUserAvatar: freezed == authenticatedUserAvatar
          ? _value.authenticatedUserAvatar
          : authenticatedUserAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
    ));
  }
}

/// @nodoc

class _$RecipeStateImpl implements _RecipeState {
  const _$RecipeStateImpl(
      {this.recipe,
      this.isSaved,
      this.isAuthorFollowed,
      this.canEdit,
      this.authenticatedUserAvatar,
      this.error});

  @override
  final RecipeViewModel? recipe;
  @override
  final bool? isSaved;
  @override
  final bool? isAuthorFollowed;
  @override
  final bool? canEdit;
  @override
  final String? authenticatedUserAvatar;
  @override
  final (Object, StackTrace)? error;

  @override
  String toString() {
    return 'RecipeState(recipe: $recipe, isSaved: $isSaved, isAuthorFollowed: $isAuthorFollowed, canEdit: $canEdit, authenticatedUserAvatar: $authenticatedUserAvatar, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeStateImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isAuthorFollowed, isAuthorFollowed) ||
                other.isAuthorFollowed == isAuthorFollowed) &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit) &&
            (identical(
                    other.authenticatedUserAvatar, authenticatedUserAvatar) ||
                other.authenticatedUserAvatar == authenticatedUserAvatar) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, isSaved,
      isAuthorFollowed, canEdit, authenticatedUserAvatar, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeStateImplCopyWith<_$RecipeStateImpl> get copyWith =>
      __$$RecipeStateImplCopyWithImpl<_$RecipeStateImpl>(this, _$identity);
}

abstract class _RecipeState implements RecipeState {
  const factory _RecipeState(
      {final RecipeViewModel? recipe,
      final bool? isSaved,
      final bool? isAuthorFollowed,
      final bool? canEdit,
      final String? authenticatedUserAvatar,
      final (Object, StackTrace)? error}) = _$RecipeStateImpl;

  @override
  RecipeViewModel? get recipe;
  @override
  bool? get isSaved;
  @override
  bool? get isAuthorFollowed;
  @override
  bool? get canEdit;
  @override
  String? get authenticatedUserAvatar;
  @override
  (Object, StackTrace)? get error;
  @override
  @JsonKey(ignore: true)
  _$$RecipeStateImplCopyWith<_$RecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
