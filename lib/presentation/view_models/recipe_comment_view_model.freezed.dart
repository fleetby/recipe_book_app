// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_comment_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeCommentViewModel {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userProfileName => throw _privateConstructorUsedError;
  String? get userAvatarId => throw _privateConstructorUsedError;
  bool get canDelete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeCommentViewModelCopyWith<RecipeCommentViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCommentViewModelCopyWith<$Res> {
  factory $RecipeCommentViewModelCopyWith(RecipeCommentViewModel value,
          $Res Function(RecipeCommentViewModel) then) =
      _$RecipeCommentViewModelCopyWithImpl<$Res, RecipeCommentViewModel>;
  @useResult
  $Res call(
      {int id,
      String text,
      String userId,
      String userProfileName,
      String? userAvatarId,
      bool canDelete});
}

/// @nodoc
class _$RecipeCommentViewModelCopyWithImpl<$Res,
        $Val extends RecipeCommentViewModel>
    implements $RecipeCommentViewModelCopyWith<$Res> {
  _$RecipeCommentViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? userId = null,
    Object? userProfileName = null,
    Object? userAvatarId = freezed,
    Object? canDelete = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userProfileName: null == userProfileName
          ? _value.userProfileName
          : userProfileName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatarId: freezed == userAvatarId
          ? _value.userAvatarId
          : userAvatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      canDelete: null == canDelete
          ? _value.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeCommentViewModelImplCopyWith<$Res>
    implements $RecipeCommentViewModelCopyWith<$Res> {
  factory _$$RecipeCommentViewModelImplCopyWith(
          _$RecipeCommentViewModelImpl value,
          $Res Function(_$RecipeCommentViewModelImpl) then) =
      __$$RecipeCommentViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String text,
      String userId,
      String userProfileName,
      String? userAvatarId,
      bool canDelete});
}

/// @nodoc
class __$$RecipeCommentViewModelImplCopyWithImpl<$Res>
    extends _$RecipeCommentViewModelCopyWithImpl<$Res,
        _$RecipeCommentViewModelImpl>
    implements _$$RecipeCommentViewModelImplCopyWith<$Res> {
  __$$RecipeCommentViewModelImplCopyWithImpl(
      _$RecipeCommentViewModelImpl _value,
      $Res Function(_$RecipeCommentViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? userId = null,
    Object? userProfileName = null,
    Object? userAvatarId = freezed,
    Object? canDelete = null,
  }) {
    return _then(_$RecipeCommentViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userProfileName: null == userProfileName
          ? _value.userProfileName
          : userProfileName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatarId: freezed == userAvatarId
          ? _value.userAvatarId
          : userAvatarId // ignore: cast_nullable_to_non_nullable
              as String?,
      canDelete: null == canDelete
          ? _value.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeCommentViewModelImpl implements _RecipeCommentViewModel {
  const _$RecipeCommentViewModelImpl(
      {required this.id,
      required this.text,
      required this.userId,
      required this.userProfileName,
      required this.userAvatarId,
      required this.canDelete});

  @override
  final int id;
  @override
  final String text;
  @override
  final String userId;
  @override
  final String userProfileName;
  @override
  final String? userAvatarId;
  @override
  final bool canDelete;

  @override
  String toString() {
    return 'RecipeCommentViewModel(id: $id, text: $text, userId: $userId, userProfileName: $userProfileName, userAvatarId: $userAvatarId, canDelete: $canDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userProfileName, userProfileName) ||
                other.userProfileName == userProfileName) &&
            (identical(other.userAvatarId, userAvatarId) ||
                other.userAvatarId == userAvatarId) &&
            (identical(other.canDelete, canDelete) ||
                other.canDelete == canDelete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, userId, userProfileName, userAvatarId, canDelete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCommentViewModelImplCopyWith<_$RecipeCommentViewModelImpl>
      get copyWith => __$$RecipeCommentViewModelImplCopyWithImpl<
          _$RecipeCommentViewModelImpl>(this, _$identity);
}

abstract class _RecipeCommentViewModel implements RecipeCommentViewModel {
  const factory _RecipeCommentViewModel(
      {required final int id,
      required final String text,
      required final String userId,
      required final String userProfileName,
      required final String? userAvatarId,
      required final bool canDelete}) = _$RecipeCommentViewModelImpl;

  @override
  int get id;
  @override
  String get text;
  @override
  String get userId;
  @override
  String get userProfileName;
  @override
  String? get userAvatarId;
  @override
  bool get canDelete;
  @override
  @JsonKey(ignore: true)
  _$$RecipeCommentViewModelImplCopyWith<_$RecipeCommentViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
