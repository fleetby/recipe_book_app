// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeModel {
  int get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get coverId => throw _privateConstructorUsedError;
  List<RecipeIngredientModel>? get ingredients =>
      throw _privateConstructorUsedError;
  List<RecipeDirectionModel>? get directions =>
      throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String? get servings => throw _privateConstructorUsedError;
  String? get preparationTime => throw _privateConstructorUsedError;
  int get savedCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {int id,
      String userId,
      int? categoryId,
      String title,
      String description,
      String? coverId,
      List<RecipeIngredientModel>? ingredients,
      List<RecipeDirectionModel>? directions,
      DateTime publishedAt,
      String? servings,
      String? preparationTime,
      int savedCount,
      int commentCount});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? categoryId = freezed,
    Object? title = null,
    Object? description = null,
    Object? coverId = freezed,
    Object? ingredients = freezed,
    Object? directions = freezed,
    Object? publishedAt = null,
    Object? servings = freezed,
    Object? preparationTime = freezed,
    Object? savedCount = null,
    Object? commentCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverId: freezed == coverId
          ? _value.coverId
          : coverId // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredientModel>?,
      directions: freezed == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<RecipeDirectionModel>?,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      servings: freezed == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationTime: freezed == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      savedCount: null == savedCount
          ? _value.savedCount
          : savedCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeModelImplCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$RecipeModelImplCopyWith(
          _$RecipeModelImpl value, $Res Function(_$RecipeModelImpl) then) =
      __$$RecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userId,
      int? categoryId,
      String title,
      String description,
      String? coverId,
      List<RecipeIngredientModel>? ingredients,
      List<RecipeDirectionModel>? directions,
      DateTime publishedAt,
      String? servings,
      String? preparationTime,
      int savedCount,
      int commentCount});
}

/// @nodoc
class __$$RecipeModelImplCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$RecipeModelImpl>
    implements _$$RecipeModelImplCopyWith<$Res> {
  __$$RecipeModelImplCopyWithImpl(
      _$RecipeModelImpl _value, $Res Function(_$RecipeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? categoryId = freezed,
    Object? title = null,
    Object? description = null,
    Object? coverId = freezed,
    Object? ingredients = freezed,
    Object? directions = freezed,
    Object? publishedAt = null,
    Object? servings = freezed,
    Object? preparationTime = freezed,
    Object? savedCount = null,
    Object? commentCount = null,
  }) {
    return _then(_$RecipeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverId: freezed == coverId
          ? _value.coverId
          : coverId // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredientModel>?,
      directions: freezed == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<RecipeDirectionModel>?,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      servings: freezed == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationTime: freezed == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      savedCount: null == savedCount
          ? _value.savedCount
          : savedCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecipeModelImpl implements _RecipeModel {
  const _$RecipeModelImpl(
      {required this.id,
      required this.userId,
      required this.categoryId,
      required this.title,
      required this.description,
      required this.coverId,
      required final List<RecipeIngredientModel>? ingredients,
      required final List<RecipeDirectionModel>? directions,
      required this.publishedAt,
      required this.servings,
      required this.preparationTime,
      required this.savedCount,
      required this.commentCount})
      : _ingredients = ingredients,
        _directions = directions;

  @override
  final int id;
  @override
  final String userId;
  @override
  final int? categoryId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? coverId;
  final List<RecipeIngredientModel>? _ingredients;
  @override
  List<RecipeIngredientModel>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecipeDirectionModel>? _directions;
  @override
  List<RecipeDirectionModel>? get directions {
    final value = _directions;
    if (value == null) return null;
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime publishedAt;
  @override
  final String? servings;
  @override
  final String? preparationTime;
  @override
  final int savedCount;
  @override
  final int commentCount;

  @override
  String toString() {
    return 'RecipeModel(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverId: $coverId, ingredients: $ingredients, directions: $directions, publishedAt: $publishedAt, servings: $servings, preparationTime: $preparationTime, savedCount: $savedCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverId, coverId) || other.coverId == coverId) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.savedCount, savedCount) ||
                other.savedCount == savedCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      categoryId,
      title,
      description,
      coverId,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_directions),
      publishedAt,
      servings,
      preparationTime,
      savedCount,
      commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);
}

abstract class _RecipeModel implements RecipeModel {
  const factory _RecipeModel(
      {required final int id,
      required final String userId,
      required final int? categoryId,
      required final String title,
      required final String description,
      required final String? coverId,
      required final List<RecipeIngredientModel>? ingredients,
      required final List<RecipeDirectionModel>? directions,
      required final DateTime publishedAt,
      required final String? servings,
      required final String? preparationTime,
      required final int savedCount,
      required final int commentCount}) = _$RecipeModelImpl;

  @override
  int get id;
  @override
  String get userId;
  @override
  int? get categoryId;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get coverId;
  @override
  List<RecipeIngredientModel>? get ingredients;
  @override
  List<RecipeDirectionModel>? get directions;
  @override
  DateTime get publishedAt;
  @override
  String? get servings;
  @override
  String? get preparationTime;
  @override
  int get savedCount;
  @override
  int get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
