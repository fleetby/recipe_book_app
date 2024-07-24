// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeViewModel {
  int get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  List<RecipeIngredientModel>? get ingredients =>
      throw _privateConstructorUsedError;
  List<RecipeDirectionModel>? get directions =>
      throw _privateConstructorUsedError;
  String get authorProfileName => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String? get servings => throw _privateConstructorUsedError;
  String? get preparationTime => throw _privateConstructorUsedError;
  String? get authorAvatarId => throw _privateConstructorUsedError;
  int get savedCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeViewModelCopyWith<RecipeViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeViewModelCopyWith<$Res> {
  factory $RecipeViewModelCopyWith(
          RecipeViewModel value, $Res Function(RecipeViewModel) then) =
      _$RecipeViewModelCopyWithImpl<$Res, RecipeViewModel>;
  @useResult
  $Res call(
      {int id,
      String userId,
      int? categoryId,
      String? categoryName,
      String title,
      String description,
      String? coverUrl,
      List<RecipeIngredientModel>? ingredients,
      List<RecipeDirectionModel>? directions,
      String authorProfileName,
      String authorId,
      DateTime publishedAt,
      String? servings,
      String? preparationTime,
      String? authorAvatarId,
      int savedCount,
      int commentCount});
}

/// @nodoc
class _$RecipeViewModelCopyWithImpl<$Res, $Val extends RecipeViewModel>
    implements $RecipeViewModelCopyWith<$Res> {
  _$RecipeViewModelCopyWithImpl(this._value, this._then);

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
    Object? categoryName = freezed,
    Object? title = null,
    Object? description = null,
    Object? coverUrl = freezed,
    Object? ingredients = freezed,
    Object? directions = freezed,
    Object? authorProfileName = null,
    Object? authorId = null,
    Object? publishedAt = null,
    Object? servings = freezed,
    Object? preparationTime = freezed,
    Object? authorAvatarId = freezed,
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
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredientModel>?,
      directions: freezed == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<RecipeDirectionModel>?,
      authorProfileName: null == authorProfileName
          ? _value.authorProfileName
          : authorProfileName // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
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
      authorAvatarId: freezed == authorAvatarId
          ? _value.authorAvatarId
          : authorAvatarId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RecipeViewModelImplCopyWith<$Res>
    implements $RecipeViewModelCopyWith<$Res> {
  factory _$$RecipeViewModelImplCopyWith(_$RecipeViewModelImpl value,
          $Res Function(_$RecipeViewModelImpl) then) =
      __$$RecipeViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userId,
      int? categoryId,
      String? categoryName,
      String title,
      String description,
      String? coverUrl,
      List<RecipeIngredientModel>? ingredients,
      List<RecipeDirectionModel>? directions,
      String authorProfileName,
      String authorId,
      DateTime publishedAt,
      String? servings,
      String? preparationTime,
      String? authorAvatarId,
      int savedCount,
      int commentCount});
}

/// @nodoc
class __$$RecipeViewModelImplCopyWithImpl<$Res>
    extends _$RecipeViewModelCopyWithImpl<$Res, _$RecipeViewModelImpl>
    implements _$$RecipeViewModelImplCopyWith<$Res> {
  __$$RecipeViewModelImplCopyWithImpl(
      _$RecipeViewModelImpl _value, $Res Function(_$RecipeViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? title = null,
    Object? description = null,
    Object? coverUrl = freezed,
    Object? ingredients = freezed,
    Object? directions = freezed,
    Object? authorProfileName = null,
    Object? authorId = null,
    Object? publishedAt = null,
    Object? servings = freezed,
    Object? preparationTime = freezed,
    Object? authorAvatarId = freezed,
    Object? savedCount = null,
    Object? commentCount = null,
  }) {
    return _then(_$RecipeViewModelImpl(
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
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredientModel>?,
      directions: freezed == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<RecipeDirectionModel>?,
      authorProfileName: null == authorProfileName
          ? _value.authorProfileName
          : authorProfileName // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
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
      authorAvatarId: freezed == authorAvatarId
          ? _value.authorAvatarId
          : authorAvatarId // ignore: cast_nullable_to_non_nullable
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

class _$RecipeViewModelImpl implements _RecipeViewModel {
  const _$RecipeViewModelImpl(
      {required this.id,
      required this.userId,
      required this.categoryId,
      required this.categoryName,
      required this.title,
      required this.description,
      required this.coverUrl,
      required final List<RecipeIngredientModel>? ingredients,
      required final List<RecipeDirectionModel>? directions,
      required this.authorProfileName,
      required this.authorId,
      required this.publishedAt,
      required this.servings,
      required this.preparationTime,
      required this.authorAvatarId,
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
  final String? categoryName;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? coverUrl;
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
  final String authorProfileName;
  @override
  final String authorId;
  @override
  final DateTime publishedAt;
  @override
  final String? servings;
  @override
  final String? preparationTime;
  @override
  final String? authorAvatarId;
  @override
  final int savedCount;
  @override
  final int commentCount;

  @override
  String toString() {
    return 'RecipeViewModel(id: $id, userId: $userId, categoryId: $categoryId, categoryName: $categoryName, title: $title, description: $description, coverUrl: $coverUrl, ingredients: $ingredients, directions: $directions, authorProfileName: $authorProfileName, authorId: $authorId, publishedAt: $publishedAt, servings: $servings, preparationTime: $preparationTime, authorAvatarId: $authorAvatarId, savedCount: $savedCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions) &&
            (identical(other.authorProfileName, authorProfileName) ||
                other.authorProfileName == authorProfileName) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.authorAvatarId, authorAvatarId) ||
                other.authorAvatarId == authorAvatarId) &&
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
      categoryName,
      title,
      description,
      coverUrl,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_directions),
      authorProfileName,
      authorId,
      publishedAt,
      servings,
      preparationTime,
      authorAvatarId,
      savedCount,
      commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeViewModelImplCopyWith<_$RecipeViewModelImpl> get copyWith =>
      __$$RecipeViewModelImplCopyWithImpl<_$RecipeViewModelImpl>(
          this, _$identity);
}

abstract class _RecipeViewModel implements RecipeViewModel {
  const factory _RecipeViewModel(
      {required final int id,
      required final String userId,
      required final int? categoryId,
      required final String? categoryName,
      required final String title,
      required final String description,
      required final String? coverUrl,
      required final List<RecipeIngredientModel>? ingredients,
      required final List<RecipeDirectionModel>? directions,
      required final String authorProfileName,
      required final String authorId,
      required final DateTime publishedAt,
      required final String? servings,
      required final String? preparationTime,
      required final String? authorAvatarId,
      required final int savedCount,
      required final int commentCount}) = _$RecipeViewModelImpl;

  @override
  int get id;
  @override
  String get userId;
  @override
  int? get categoryId;
  @override
  String? get categoryName;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get coverUrl;
  @override
  List<RecipeIngredientModel>? get ingredients;
  @override
  List<RecipeDirectionModel>? get directions;
  @override
  String get authorProfileName;
  @override
  String get authorId;
  @override
  DateTime get publishedAt;
  @override
  String? get servings;
  @override
  String? get preparationTime;
  @override
  String? get authorAvatarId;
  @override
  int get savedCount;
  @override
  int get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$RecipeViewModelImplCopyWith<_$RecipeViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
