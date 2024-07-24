// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_comments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeCommentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId, bool invalidateCache) load,
    required TResult Function(String text) createComment,
    required TResult Function(int commentId) deleteComment,
    required TResult Function() loadAuthenticatedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId, bool invalidateCache)? load,
    TResult? Function(String text)? createComment,
    TResult? Function(int commentId)? deleteComment,
    TResult? Function()? loadAuthenticatedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId, bool invalidateCache)? load,
    TResult Function(String text)? createComment,
    TResult Function(int commentId)? deleteComment,
    TResult Function()? loadAuthenticatedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeCommentsLoad value) load,
    required TResult Function(RecipeCommentsCreateComment value) createComment,
    required TResult Function(RecipeCommentsDeleteComment value) deleteComment,
    required TResult Function(RecipeCommentsLoadAuthenticatedUser value)
        loadAuthenticatedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeCommentsLoad value)? load,
    TResult? Function(RecipeCommentsCreateComment value)? createComment,
    TResult? Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult? Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeCommentsLoad value)? load,
    TResult Function(RecipeCommentsCreateComment value)? createComment,
    TResult Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCommentsEventCopyWith<$Res> {
  factory $RecipeCommentsEventCopyWith(
          RecipeCommentsEvent value, $Res Function(RecipeCommentsEvent) then) =
      _$RecipeCommentsEventCopyWithImpl<$Res, RecipeCommentsEvent>;
}

/// @nodoc
class _$RecipeCommentsEventCopyWithImpl<$Res, $Val extends RecipeCommentsEvent>
    implements $RecipeCommentsEventCopyWith<$Res> {
  _$RecipeCommentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipeCommentsLoadImplCopyWith<$Res> {
  factory _$$RecipeCommentsLoadImplCopyWith(_$RecipeCommentsLoadImpl value,
          $Res Function(_$RecipeCommentsLoadImpl) then) =
      __$$RecipeCommentsLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int recipeId, bool invalidateCache});
}

/// @nodoc
class __$$RecipeCommentsLoadImplCopyWithImpl<$Res>
    extends _$RecipeCommentsEventCopyWithImpl<$Res, _$RecipeCommentsLoadImpl>
    implements _$$RecipeCommentsLoadImplCopyWith<$Res> {
  __$$RecipeCommentsLoadImplCopyWithImpl(_$RecipeCommentsLoadImpl _value,
      $Res Function(_$RecipeCommentsLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? invalidateCache = null,
  }) {
    return _then(_$RecipeCommentsLoadImpl(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      invalidateCache: null == invalidateCache
          ? _value.invalidateCache
          : invalidateCache // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeCommentsLoadImpl implements RecipeCommentsLoad {
  const _$RecipeCommentsLoadImpl(
      {required this.recipeId, this.invalidateCache = false});

  @override
  final int recipeId;
  @override
  @JsonKey()
  final bool invalidateCache;

  @override
  String toString() {
    return 'RecipeCommentsEvent.load(recipeId: $recipeId, invalidateCache: $invalidateCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentsLoadImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.invalidateCache, invalidateCache) ||
                other.invalidateCache == invalidateCache));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, invalidateCache);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCommentsLoadImplCopyWith<_$RecipeCommentsLoadImpl> get copyWith =>
      __$$RecipeCommentsLoadImplCopyWithImpl<_$RecipeCommentsLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId, bool invalidateCache) load,
    required TResult Function(String text) createComment,
    required TResult Function(int commentId) deleteComment,
    required TResult Function() loadAuthenticatedUser,
  }) {
    return load(recipeId, invalidateCache);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId, bool invalidateCache)? load,
    TResult? Function(String text)? createComment,
    TResult? Function(int commentId)? deleteComment,
    TResult? Function()? loadAuthenticatedUser,
  }) {
    return load?.call(recipeId, invalidateCache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId, bool invalidateCache)? load,
    TResult Function(String text)? createComment,
    TResult Function(int commentId)? deleteComment,
    TResult Function()? loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(recipeId, invalidateCache);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeCommentsLoad value) load,
    required TResult Function(RecipeCommentsCreateComment value) createComment,
    required TResult Function(RecipeCommentsDeleteComment value) deleteComment,
    required TResult Function(RecipeCommentsLoadAuthenticatedUser value)
        loadAuthenticatedUser,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeCommentsLoad value)? load,
    TResult? Function(RecipeCommentsCreateComment value)? createComment,
    TResult? Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult? Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeCommentsLoad value)? load,
    TResult Function(RecipeCommentsCreateComment value)? createComment,
    TResult Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class RecipeCommentsLoad implements RecipeCommentsEvent {
  const factory RecipeCommentsLoad(
      {required final int recipeId,
      final bool invalidateCache}) = _$RecipeCommentsLoadImpl;

  int get recipeId;
  bool get invalidateCache;
  @JsonKey(ignore: true)
  _$$RecipeCommentsLoadImplCopyWith<_$RecipeCommentsLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeCommentsCreateCommentImplCopyWith<$Res> {
  factory _$$RecipeCommentsCreateCommentImplCopyWith(
          _$RecipeCommentsCreateCommentImpl value,
          $Res Function(_$RecipeCommentsCreateCommentImpl) then) =
      __$$RecipeCommentsCreateCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$RecipeCommentsCreateCommentImplCopyWithImpl<$Res>
    extends _$RecipeCommentsEventCopyWithImpl<$Res,
        _$RecipeCommentsCreateCommentImpl>
    implements _$$RecipeCommentsCreateCommentImplCopyWith<$Res> {
  __$$RecipeCommentsCreateCommentImplCopyWithImpl(
      _$RecipeCommentsCreateCommentImpl _value,
      $Res Function(_$RecipeCommentsCreateCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$RecipeCommentsCreateCommentImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipeCommentsCreateCommentImpl implements RecipeCommentsCreateComment {
  const _$RecipeCommentsCreateCommentImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'RecipeCommentsEvent.createComment(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentsCreateCommentImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCommentsCreateCommentImplCopyWith<_$RecipeCommentsCreateCommentImpl>
      get copyWith => __$$RecipeCommentsCreateCommentImplCopyWithImpl<
          _$RecipeCommentsCreateCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId, bool invalidateCache) load,
    required TResult Function(String text) createComment,
    required TResult Function(int commentId) deleteComment,
    required TResult Function() loadAuthenticatedUser,
  }) {
    return createComment(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId, bool invalidateCache)? load,
    TResult? Function(String text)? createComment,
    TResult? Function(int commentId)? deleteComment,
    TResult? Function()? loadAuthenticatedUser,
  }) {
    return createComment?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId, bool invalidateCache)? load,
    TResult Function(String text)? createComment,
    TResult Function(int commentId)? deleteComment,
    TResult Function()? loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (createComment != null) {
      return createComment(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeCommentsLoad value) load,
    required TResult Function(RecipeCommentsCreateComment value) createComment,
    required TResult Function(RecipeCommentsDeleteComment value) deleteComment,
    required TResult Function(RecipeCommentsLoadAuthenticatedUser value)
        loadAuthenticatedUser,
  }) {
    return createComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeCommentsLoad value)? load,
    TResult? Function(RecipeCommentsCreateComment value)? createComment,
    TResult? Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult? Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
  }) {
    return createComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeCommentsLoad value)? load,
    TResult Function(RecipeCommentsCreateComment value)? createComment,
    TResult Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (createComment != null) {
      return createComment(this);
    }
    return orElse();
  }
}

abstract class RecipeCommentsCreateComment implements RecipeCommentsEvent {
  const factory RecipeCommentsCreateComment(final String text) =
      _$RecipeCommentsCreateCommentImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$RecipeCommentsCreateCommentImplCopyWith<_$RecipeCommentsCreateCommentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeCommentsDeleteCommentImplCopyWith<$Res> {
  factory _$$RecipeCommentsDeleteCommentImplCopyWith(
          _$RecipeCommentsDeleteCommentImpl value,
          $Res Function(_$RecipeCommentsDeleteCommentImpl) then) =
      __$$RecipeCommentsDeleteCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int commentId});
}

/// @nodoc
class __$$RecipeCommentsDeleteCommentImplCopyWithImpl<$Res>
    extends _$RecipeCommentsEventCopyWithImpl<$Res,
        _$RecipeCommentsDeleteCommentImpl>
    implements _$$RecipeCommentsDeleteCommentImplCopyWith<$Res> {
  __$$RecipeCommentsDeleteCommentImplCopyWithImpl(
      _$RecipeCommentsDeleteCommentImpl _value,
      $Res Function(_$RecipeCommentsDeleteCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_$RecipeCommentsDeleteCommentImpl(
      null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecipeCommentsDeleteCommentImpl implements RecipeCommentsDeleteComment {
  const _$RecipeCommentsDeleteCommentImpl(this.commentId);

  @override
  final int commentId;

  @override
  String toString() {
    return 'RecipeCommentsEvent.deleteComment(commentId: $commentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentsDeleteCommentImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCommentsDeleteCommentImplCopyWith<_$RecipeCommentsDeleteCommentImpl>
      get copyWith => __$$RecipeCommentsDeleteCommentImplCopyWithImpl<
          _$RecipeCommentsDeleteCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId, bool invalidateCache) load,
    required TResult Function(String text) createComment,
    required TResult Function(int commentId) deleteComment,
    required TResult Function() loadAuthenticatedUser,
  }) {
    return deleteComment(commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId, bool invalidateCache)? load,
    TResult? Function(String text)? createComment,
    TResult? Function(int commentId)? deleteComment,
    TResult? Function()? loadAuthenticatedUser,
  }) {
    return deleteComment?.call(commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId, bool invalidateCache)? load,
    TResult Function(String text)? createComment,
    TResult Function(int commentId)? deleteComment,
    TResult Function()? loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeCommentsLoad value) load,
    required TResult Function(RecipeCommentsCreateComment value) createComment,
    required TResult Function(RecipeCommentsDeleteComment value) deleteComment,
    required TResult Function(RecipeCommentsLoadAuthenticatedUser value)
        loadAuthenticatedUser,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeCommentsLoad value)? load,
    TResult? Function(RecipeCommentsCreateComment value)? createComment,
    TResult? Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult? Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeCommentsLoad value)? load,
    TResult Function(RecipeCommentsCreateComment value)? createComment,
    TResult Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class RecipeCommentsDeleteComment implements RecipeCommentsEvent {
  const factory RecipeCommentsDeleteComment(final int commentId) =
      _$RecipeCommentsDeleteCommentImpl;

  int get commentId;
  @JsonKey(ignore: true)
  _$$RecipeCommentsDeleteCommentImplCopyWith<_$RecipeCommentsDeleteCommentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeCommentsLoadAuthenticatedUserImplCopyWith<$Res> {
  factory _$$RecipeCommentsLoadAuthenticatedUserImplCopyWith(
          _$RecipeCommentsLoadAuthenticatedUserImpl value,
          $Res Function(_$RecipeCommentsLoadAuthenticatedUserImpl) then) =
      __$$RecipeCommentsLoadAuthenticatedUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeCommentsLoadAuthenticatedUserImplCopyWithImpl<$Res>
    extends _$RecipeCommentsEventCopyWithImpl<$Res,
        _$RecipeCommentsLoadAuthenticatedUserImpl>
    implements _$$RecipeCommentsLoadAuthenticatedUserImplCopyWith<$Res> {
  __$$RecipeCommentsLoadAuthenticatedUserImplCopyWithImpl(
      _$RecipeCommentsLoadAuthenticatedUserImpl _value,
      $Res Function(_$RecipeCommentsLoadAuthenticatedUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeCommentsLoadAuthenticatedUserImpl
    implements RecipeCommentsLoadAuthenticatedUser {
  const _$RecipeCommentsLoadAuthenticatedUserImpl();

  @override
  String toString() {
    return 'RecipeCommentsEvent.loadAuthenticatedUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentsLoadAuthenticatedUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId, bool invalidateCache) load,
    required TResult Function(String text) createComment,
    required TResult Function(int commentId) deleteComment,
    required TResult Function() loadAuthenticatedUser,
  }) {
    return loadAuthenticatedUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId, bool invalidateCache)? load,
    TResult? Function(String text)? createComment,
    TResult? Function(int commentId)? deleteComment,
    TResult? Function()? loadAuthenticatedUser,
  }) {
    return loadAuthenticatedUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId, bool invalidateCache)? load,
    TResult Function(String text)? createComment,
    TResult Function(int commentId)? deleteComment,
    TResult Function()? loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (loadAuthenticatedUser != null) {
      return loadAuthenticatedUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeCommentsLoad value) load,
    required TResult Function(RecipeCommentsCreateComment value) createComment,
    required TResult Function(RecipeCommentsDeleteComment value) deleteComment,
    required TResult Function(RecipeCommentsLoadAuthenticatedUser value)
        loadAuthenticatedUser,
  }) {
    return loadAuthenticatedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeCommentsLoad value)? load,
    TResult? Function(RecipeCommentsCreateComment value)? createComment,
    TResult? Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult? Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
  }) {
    return loadAuthenticatedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeCommentsLoad value)? load,
    TResult Function(RecipeCommentsCreateComment value)? createComment,
    TResult Function(RecipeCommentsDeleteComment value)? deleteComment,
    TResult Function(RecipeCommentsLoadAuthenticatedUser value)?
        loadAuthenticatedUser,
    required TResult orElse(),
  }) {
    if (loadAuthenticatedUser != null) {
      return loadAuthenticatedUser(this);
    }
    return orElse();
  }
}

abstract class RecipeCommentsLoadAuthenticatedUser
    implements RecipeCommentsEvent {
  const factory RecipeCommentsLoadAuthenticatedUser() =
      _$RecipeCommentsLoadAuthenticatedUserImpl;
}

/// @nodoc
mixin _$RecipeCommentsState {
  int? get recipeId => throw _privateConstructorUsedError;
  List<RecipeCommentViewModel>? get comments =>
      throw _privateConstructorUsedError;
  int? get totalComments => throw _privateConstructorUsedError;
  UserProfileModel? get authenticatedUser => throw _privateConstructorUsedError;
  (Object, StackTrace)? get error => throw _privateConstructorUsedError;
  OpStatus? get currentOpStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeCommentsStateCopyWith<RecipeCommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCommentsStateCopyWith<$Res> {
  factory $RecipeCommentsStateCopyWith(
          RecipeCommentsState value, $Res Function(RecipeCommentsState) then) =
      _$RecipeCommentsStateCopyWithImpl<$Res, RecipeCommentsState>;
  @useResult
  $Res call(
      {int? recipeId,
      List<RecipeCommentViewModel>? comments,
      int? totalComments,
      UserProfileModel? authenticatedUser,
      (Object, StackTrace)? error,
      OpStatus? currentOpStatus});

  $UserProfileModelCopyWith<$Res>? get authenticatedUser;
}

/// @nodoc
class _$RecipeCommentsStateCopyWithImpl<$Res, $Val extends RecipeCommentsState>
    implements $RecipeCommentsStateCopyWith<$Res> {
  _$RecipeCommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = freezed,
    Object? comments = freezed,
    Object? totalComments = freezed,
    Object? authenticatedUser = freezed,
    Object? error = freezed,
    Object? currentOpStatus = freezed,
  }) {
    return _then(_value.copyWith(
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<RecipeCommentViewModel>?,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      authenticatedUser: freezed == authenticatedUser
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
      currentOpStatus: freezed == currentOpStatus
          ? _value.currentOpStatus
          : currentOpStatus // ignore: cast_nullable_to_non_nullable
              as OpStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res>? get authenticatedUser {
    if (_value.authenticatedUser == null) {
      return null;
    }

    return $UserProfileModelCopyWith<$Res>(_value.authenticatedUser!, (value) {
      return _then(_value.copyWith(authenticatedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeCommentsStateImplCopyWith<$Res>
    implements $RecipeCommentsStateCopyWith<$Res> {
  factory _$$RecipeCommentsStateImplCopyWith(_$RecipeCommentsStateImpl value,
          $Res Function(_$RecipeCommentsStateImpl) then) =
      __$$RecipeCommentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? recipeId,
      List<RecipeCommentViewModel>? comments,
      int? totalComments,
      UserProfileModel? authenticatedUser,
      (Object, StackTrace)? error,
      OpStatus? currentOpStatus});

  @override
  $UserProfileModelCopyWith<$Res>? get authenticatedUser;
}

/// @nodoc
class __$$RecipeCommentsStateImplCopyWithImpl<$Res>
    extends _$RecipeCommentsStateCopyWithImpl<$Res, _$RecipeCommentsStateImpl>
    implements _$$RecipeCommentsStateImplCopyWith<$Res> {
  __$$RecipeCommentsStateImplCopyWithImpl(_$RecipeCommentsStateImpl _value,
      $Res Function(_$RecipeCommentsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = freezed,
    Object? comments = freezed,
    Object? totalComments = freezed,
    Object? authenticatedUser = freezed,
    Object? error = freezed,
    Object? currentOpStatus = freezed,
  }) {
    return _then(_$RecipeCommentsStateImpl(
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<RecipeCommentViewModel>?,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      authenticatedUser: freezed == authenticatedUser
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
      currentOpStatus: freezed == currentOpStatus
          ? _value.currentOpStatus
          : currentOpStatus // ignore: cast_nullable_to_non_nullable
              as OpStatus?,
    ));
  }
}

/// @nodoc

class _$RecipeCommentsStateImpl implements _RecipeCommentsState {
  const _$RecipeCommentsStateImpl(
      {this.recipeId,
      final List<RecipeCommentViewModel>? comments,
      this.totalComments,
      this.authenticatedUser,
      this.error,
      this.currentOpStatus})
      : _comments = comments;

  @override
  final int? recipeId;
  final List<RecipeCommentViewModel>? _comments;
  @override
  List<RecipeCommentViewModel>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalComments;
  @override
  final UserProfileModel? authenticatedUser;
  @override
  final (Object, StackTrace)? error;
  @override
  final OpStatus? currentOpStatus;

  @override
  String toString() {
    return 'RecipeCommentsState(recipeId: $recipeId, comments: $comments, totalComments: $totalComments, authenticatedUser: $authenticatedUser, error: $error, currentOpStatus: $currentOpStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentsStateImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.authenticatedUser, authenticatedUser) ||
                other.authenticatedUser == authenticatedUser) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.currentOpStatus, currentOpStatus) ||
                other.currentOpStatus == currentOpStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipeId,
      const DeepCollectionEquality().hash(_comments),
      totalComments,
      authenticatedUser,
      error,
      currentOpStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCommentsStateImplCopyWith<_$RecipeCommentsStateImpl> get copyWith =>
      __$$RecipeCommentsStateImplCopyWithImpl<_$RecipeCommentsStateImpl>(
          this, _$identity);
}

abstract class _RecipeCommentsState implements RecipeCommentsState {
  const factory _RecipeCommentsState(
      {final int? recipeId,
      final List<RecipeCommentViewModel>? comments,
      final int? totalComments,
      final UserProfileModel? authenticatedUser,
      final (Object, StackTrace)? error,
      final OpStatus? currentOpStatus}) = _$RecipeCommentsStateImpl;

  @override
  int? get recipeId;
  @override
  List<RecipeCommentViewModel>? get comments;
  @override
  int? get totalComments;
  @override
  UserProfileModel? get authenticatedUser;
  @override
  (Object, StackTrace)? get error;
  @override
  OpStatus? get currentOpStatus;
  @override
  @JsonKey(ignore: true)
  _$$RecipeCommentsStateImplCopyWith<_$RecipeCommentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
