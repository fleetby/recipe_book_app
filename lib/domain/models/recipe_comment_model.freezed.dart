// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeCommentModel {
  int get id => throw _privateConstructorUsedError;
  int get recipeId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeCommentModelCopyWith<RecipeCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCommentModelCopyWith<$Res> {
  factory $RecipeCommentModelCopyWith(
          RecipeCommentModel value, $Res Function(RecipeCommentModel) then) =
      _$RecipeCommentModelCopyWithImpl<$Res, RecipeCommentModel>;
  @useResult
  $Res call({int id, int recipeId, String userId, String text});
}

/// @nodoc
class _$RecipeCommentModelCopyWithImpl<$Res, $Val extends RecipeCommentModel>
    implements $RecipeCommentModelCopyWith<$Res> {
  _$RecipeCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? userId = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeCommentModelImplCopyWith<$Res>
    implements $RecipeCommentModelCopyWith<$Res> {
  factory _$$RecipeCommentModelImplCopyWith(_$RecipeCommentModelImpl value,
          $Res Function(_$RecipeCommentModelImpl) then) =
      __$$RecipeCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int recipeId, String userId, String text});
}

/// @nodoc
class __$$RecipeCommentModelImplCopyWithImpl<$Res>
    extends _$RecipeCommentModelCopyWithImpl<$Res, _$RecipeCommentModelImpl>
    implements _$$RecipeCommentModelImplCopyWith<$Res> {
  __$$RecipeCommentModelImplCopyWithImpl(_$RecipeCommentModelImpl _value,
      $Res Function(_$RecipeCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? userId = null,
    Object? text = null,
  }) {
    return _then(_$RecipeCommentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipeCommentModelImpl implements _RecipeCommentModel {
  const _$RecipeCommentModelImpl(
      {required this.id,
      required this.recipeId,
      required this.userId,
      required this.text});

  @override
  final int id;
  @override
  final int recipeId;
  @override
  final String userId;
  @override
  final String text;

  @override
  String toString() {
    return 'RecipeCommentModel(id: $id, recipeId: $recipeId, userId: $userId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, recipeId, userId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCommentModelImplCopyWith<_$RecipeCommentModelImpl> get copyWith =>
      __$$RecipeCommentModelImplCopyWithImpl<_$RecipeCommentModelImpl>(
          this, _$identity);
}

abstract class _RecipeCommentModel implements RecipeCommentModel {
  const factory _RecipeCommentModel(
      {required final int id,
      required final int recipeId,
      required final String userId,
      required final String text}) = _$RecipeCommentModelImpl;

  @override
  int get id;
  @override
  int get recipeId;
  @override
  String get userId;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$RecipeCommentModelImplCopyWith<_$RecipeCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
