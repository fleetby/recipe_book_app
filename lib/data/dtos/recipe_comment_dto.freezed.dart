// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeCommentDto _$RecipeCommentDtoFromJson(Map<String, dynamic> json) {
  return _RecipeCommentDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeCommentDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_id')
  int get recipeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCommentDtoCopyWith<RecipeCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCommentDtoCopyWith<$Res> {
  factory $RecipeCommentDtoCopyWith(
          RecipeCommentDto value, $Res Function(RecipeCommentDto) then) =
      _$RecipeCommentDtoCopyWithImpl<$Res, RecipeCommentDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'recipe_id') int recipeId,
      @JsonKey(name: 'user_id') String userId,
      String text});
}

/// @nodoc
class _$RecipeCommentDtoCopyWithImpl<$Res, $Val extends RecipeCommentDto>
    implements $RecipeCommentDtoCopyWith<$Res> {
  _$RecipeCommentDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$RecipeCommentDtoImplCopyWith<$Res>
    implements $RecipeCommentDtoCopyWith<$Res> {
  factory _$$RecipeCommentDtoImplCopyWith(_$RecipeCommentDtoImpl value,
          $Res Function(_$RecipeCommentDtoImpl) then) =
      __$$RecipeCommentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'recipe_id') int recipeId,
      @JsonKey(name: 'user_id') String userId,
      String text});
}

/// @nodoc
class __$$RecipeCommentDtoImplCopyWithImpl<$Res>
    extends _$RecipeCommentDtoCopyWithImpl<$Res, _$RecipeCommentDtoImpl>
    implements _$$RecipeCommentDtoImplCopyWith<$Res> {
  __$$RecipeCommentDtoImplCopyWithImpl(_$RecipeCommentDtoImpl _value,
      $Res Function(_$RecipeCommentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? userId = null,
    Object? text = null,
  }) {
    return _then(_$RecipeCommentDtoImpl(
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
@JsonSerializable()
class _$RecipeCommentDtoImpl implements _RecipeCommentDto {
  const _$RecipeCommentDtoImpl(
      {required this.id,
      @JsonKey(name: 'recipe_id') required this.recipeId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.text});

  factory _$RecipeCommentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeCommentDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'recipe_id')
  final int recipeId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String text;

  @override
  String toString() {
    return 'RecipeCommentDto(id: $id, recipeId: $recipeId, userId: $userId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeCommentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, recipeId, userId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeCommentDtoImplCopyWith<_$RecipeCommentDtoImpl> get copyWith =>
      __$$RecipeCommentDtoImplCopyWithImpl<_$RecipeCommentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeCommentDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeCommentDto implements RecipeCommentDto {
  const factory _RecipeCommentDto(
      {required final int id,
      @JsonKey(name: 'recipe_id') required final int recipeId,
      @JsonKey(name: 'user_id') required final String userId,
      required final String text}) = _$RecipeCommentDtoImpl;

  factory _RecipeCommentDto.fromJson(Map<String, dynamic> json) =
      _$RecipeCommentDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'recipe_id')
  int get recipeId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$RecipeCommentDtoImplCopyWith<_$RecipeCommentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
