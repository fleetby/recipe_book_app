// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDto _$RecipeDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_id')
  String? get coverId => throw _privateConstructorUsedError;
  List<RecipeIngredientDto>? get ingredients =>
      throw _privateConstructorUsedError;
  List<RecipeDirectionDto>? get directions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String? get servings => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_time')
  String? get preparationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'saved_count')
  int get savedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDtoCopyWith<RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDtoCopyWith<$Res> {
  factory $RecipeDtoCopyWith(RecipeDto value, $Res Function(RecipeDto) then) =
      _$RecipeDtoCopyWithImpl<$Res, RecipeDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'category_id') int? categoryId,
      String title,
      String description,
      @JsonKey(name: 'cover_id') String? coverId,
      List<RecipeIngredientDto>? ingredients,
      List<RecipeDirectionDto>? directions,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      String? servings,
      @JsonKey(name: 'preparation_time') String? preparationTime,
      @JsonKey(name: 'saved_count') int savedCount,
      @JsonKey(name: 'comment_count') int commentCount});
}

/// @nodoc
class _$RecipeDtoCopyWithImpl<$Res, $Val extends RecipeDto>
    implements $RecipeDtoCopyWith<$Res> {
  _$RecipeDtoCopyWithImpl(this._value, this._then);

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
              as List<RecipeIngredientDto>?,
      directions: freezed == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<RecipeDirectionDto>?,
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
abstract class _$$RecipeDtoImplCopyWith<$Res>
    implements $RecipeDtoCopyWith<$Res> {
  factory _$$RecipeDtoImplCopyWith(
          _$RecipeDtoImpl value, $Res Function(_$RecipeDtoImpl) then) =
      __$$RecipeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'category_id') int? categoryId,
      String title,
      String description,
      @JsonKey(name: 'cover_id') String? coverId,
      List<RecipeIngredientDto>? ingredients,
      List<RecipeDirectionDto>? directions,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      String? servings,
      @JsonKey(name: 'preparation_time') String? preparationTime,
      @JsonKey(name: 'saved_count') int savedCount,
      @JsonKey(name: 'comment_count') int commentCount});
}

/// @nodoc
class __$$RecipeDtoImplCopyWithImpl<$Res>
    extends _$RecipeDtoCopyWithImpl<$Res, _$RecipeDtoImpl>
    implements _$$RecipeDtoImplCopyWith<$Res> {
  __$$RecipeDtoImplCopyWithImpl(
      _$RecipeDtoImpl _value, $Res Function(_$RecipeDtoImpl) _then)
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
    return _then(_$RecipeDtoImpl(
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
              as List<RecipeIngredientDto>?,
      directions: freezed == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<RecipeDirectionDto>?,
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
@JsonSerializable()
class _$RecipeDtoImpl implements _RecipeDto {
  const _$RecipeDtoImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'category_id') required this.categoryId,
      required this.title,
      required this.description,
      @JsonKey(name: 'cover_id') required this.coverId,
      required final List<RecipeIngredientDto>? ingredients,
      required final List<RecipeDirectionDto>? directions,
      @JsonKey(name: 'published_at') required this.publishedAt,
      required this.servings,
      @JsonKey(name: 'preparation_time') required this.preparationTime,
      @JsonKey(name: 'saved_count') required this.savedCount,
      @JsonKey(name: 'comment_count') required this.commentCount})
      : _ingredients = ingredients,
        _directions = directions;

  factory _$RecipeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'cover_id')
  final String? coverId;
  final List<RecipeIngredientDto>? _ingredients;
  @override
  List<RecipeIngredientDto>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecipeDirectionDto>? _directions;
  @override
  List<RecipeDirectionDto>? get directions {
    final value = _directions;
    if (value == null) return null;
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @override
  final String? servings;
  @override
  @JsonKey(name: 'preparation_time')
  final String? preparationTime;
  @override
  @JsonKey(name: 'saved_count')
  final int savedCount;
  @override
  @JsonKey(name: 'comment_count')
  final int commentCount;

  @override
  String toString() {
    return 'RecipeDto(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverId: $coverId, ingredients: $ingredients, directions: $directions, publishedAt: $publishedAt, servings: $servings, preparationTime: $preparationTime, savedCount: $savedCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDtoImpl &&
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

  @JsonKey(ignore: true)
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
  _$$RecipeDtoImplCopyWith<_$RecipeDtoImpl> get copyWith =>
      __$$RecipeDtoImplCopyWithImpl<_$RecipeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeDto implements RecipeDto {
  const factory _RecipeDto(
      {required final int id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'category_id') required final int? categoryId,
      required final String title,
      required final String description,
      @JsonKey(name: 'cover_id') required final String? coverId,
      required final List<RecipeIngredientDto>? ingredients,
      required final List<RecipeDirectionDto>? directions,
      @JsonKey(name: 'published_at') required final DateTime publishedAt,
      required final String? servings,
      @JsonKey(name: 'preparation_time') required final String? preparationTime,
      @JsonKey(name: 'saved_count') required final int savedCount,
      @JsonKey(name: 'comment_count')
      required final int commentCount}) = _$RecipeDtoImpl;

  factory _RecipeDto.fromJson(Map<String, dynamic> json) =
      _$RecipeDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'cover_id')
  String? get coverId;
  @override
  List<RecipeIngredientDto>? get ingredients;
  @override
  List<RecipeDirectionDto>? get directions;
  @override
  @JsonKey(name: 'published_at')
  DateTime get publishedAt;
  @override
  String? get servings;
  @override
  @JsonKey(name: 'preparation_time')
  String? get preparationTime;
  @override
  @JsonKey(name: 'saved_count')
  int get savedCount;
  @override
  @JsonKey(name: 'comment_count')
  int get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDtoImplCopyWith<_$RecipeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
