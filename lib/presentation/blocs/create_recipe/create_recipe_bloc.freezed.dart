// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateRecipeEvent {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get servings => throw _privateConstructorUsedError;
  String get preparationTime => throw _privateConstructorUsedError;
  ImageItemViewModel? get cover => throw _privateConstructorUsedError;
  List<(String, String)> get ingredients => throw _privateConstructorUsedError;
  List<DirectionsEditorItemViewModel> get directions =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            ImageItemViewModel? cover,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            ImageItemViewModel? cover,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions)?
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            ImageItemViewModel? cover,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions)?
        create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRecipeCreate value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRecipeCreate value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRecipeCreate value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRecipeEventCopyWith<CreateRecipeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeEventCopyWith<$Res> {
  factory $CreateRecipeEventCopyWith(
          CreateRecipeEvent value, $Res Function(CreateRecipeEvent) then) =
      _$CreateRecipeEventCopyWithImpl<$Res, CreateRecipeEvent>;
  @useResult
  $Res call(
      {String title,
      String description,
      String servings,
      String preparationTime,
      ImageItemViewModel? cover,
      List<(String, String)> ingredients,
      List<DirectionsEditorItemViewModel> directions});

  $ImageItemViewModelCopyWith<$Res>? get cover;
}

/// @nodoc
class _$CreateRecipeEventCopyWithImpl<$Res, $Val extends CreateRecipeEvent>
    implements $CreateRecipeEventCopyWith<$Res> {
  _$CreateRecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? servings = null,
    Object? preparationTime = null,
    Object? cover = freezed,
    Object? ingredients = null,
    Object? directions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String,
      preparationTime: null == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as ImageItemViewModel?,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<(String, String)>,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<DirectionsEditorItemViewModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageItemViewModelCopyWith<$Res>? get cover {
    if (_value.cover == null) {
      return null;
    }

    return $ImageItemViewModelCopyWith<$Res>(_value.cover!, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateRecipeCreateImplCopyWith<$Res>
    implements $CreateRecipeEventCopyWith<$Res> {
  factory _$$CreateRecipeCreateImplCopyWith(_$CreateRecipeCreateImpl value,
          $Res Function(_$CreateRecipeCreateImpl) then) =
      __$$CreateRecipeCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String servings,
      String preparationTime,
      ImageItemViewModel? cover,
      List<(String, String)> ingredients,
      List<DirectionsEditorItemViewModel> directions});

  @override
  $ImageItemViewModelCopyWith<$Res>? get cover;
}

/// @nodoc
class __$$CreateRecipeCreateImplCopyWithImpl<$Res>
    extends _$CreateRecipeEventCopyWithImpl<$Res, _$CreateRecipeCreateImpl>
    implements _$$CreateRecipeCreateImplCopyWith<$Res> {
  __$$CreateRecipeCreateImplCopyWithImpl(_$CreateRecipeCreateImpl _value,
      $Res Function(_$CreateRecipeCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? servings = null,
    Object? preparationTime = null,
    Object? cover = freezed,
    Object? ingredients = null,
    Object? directions = null,
  }) {
    return _then(_$CreateRecipeCreateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String,
      preparationTime: null == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as ImageItemViewModel?,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<(String, String)>,
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<DirectionsEditorItemViewModel>,
    ));
  }
}

/// @nodoc

class _$CreateRecipeCreateImpl implements CreateRecipeCreate {
  const _$CreateRecipeCreateImpl(
      {required this.title,
      required this.description,
      required this.servings,
      required this.preparationTime,
      required this.cover,
      required final List<(String, String)> ingredients,
      required final List<DirectionsEditorItemViewModel> directions})
      : _ingredients = ingredients,
        _directions = directions;

  @override
  final String title;
  @override
  final String description;
  @override
  final String servings;
  @override
  final String preparationTime;
  @override
  final ImageItemViewModel? cover;
  final List<(String, String)> _ingredients;
  @override
  List<(String, String)> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<DirectionsEditorItemViewModel> _directions;
  @override
  List<DirectionsEditorItemViewModel> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  String toString() {
    return 'CreateRecipeEvent.create(title: $title, description: $description, servings: $servings, preparationTime: $preparationTime, cover: $cover, ingredients: $ingredients, directions: $directions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecipeCreateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      servings,
      preparationTime,
      cover,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_directions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRecipeCreateImplCopyWith<_$CreateRecipeCreateImpl> get copyWith =>
      __$$CreateRecipeCreateImplCopyWithImpl<_$CreateRecipeCreateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            ImageItemViewModel? cover,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions)
        create,
  }) {
    return create(title, description, servings, preparationTime, cover,
        ingredients, directions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            ImageItemViewModel? cover,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions)?
        create,
  }) {
    return create?.call(title, description, servings, preparationTime, cover,
        ingredients, directions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            ImageItemViewModel? cover,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions)?
        create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(title, description, servings, preparationTime, cover,
          ingredients, directions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRecipeCreate value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRecipeCreate value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRecipeCreate value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateRecipeCreate implements CreateRecipeEvent {
  const factory CreateRecipeCreate(
          {required final String title,
          required final String description,
          required final String servings,
          required final String preparationTime,
          required final ImageItemViewModel? cover,
          required final List<(String, String)> ingredients,
          required final List<DirectionsEditorItemViewModel> directions}) =
      _$CreateRecipeCreateImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  String get servings;
  @override
  String get preparationTime;
  @override
  ImageItemViewModel? get cover;
  @override
  List<(String, String)> get ingredients;
  @override
  List<DirectionsEditorItemViewModel> get directions;
  @override
  @JsonKey(ignore: true)
  _$$CreateRecipeCreateImplCopyWith<_$CreateRecipeCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateRecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int recipeId) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int recipeId)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int recipeId)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRecipeInitial value) initial,
    required TResult Function(CreateRecipeLoading value) loading,
    required TResult Function(CreateRecipeSuccess value) success,
    required TResult Function(CreateRecipeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRecipeInitial value)? initial,
    TResult? Function(CreateRecipeLoading value)? loading,
    TResult? Function(CreateRecipeSuccess value)? success,
    TResult? Function(CreateRecipeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRecipeInitial value)? initial,
    TResult Function(CreateRecipeLoading value)? loading,
    TResult Function(CreateRecipeSuccess value)? success,
    TResult Function(CreateRecipeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecipeStateCopyWith<$Res> {
  factory $CreateRecipeStateCopyWith(
          CreateRecipeState value, $Res Function(CreateRecipeState) then) =
      _$CreateRecipeStateCopyWithImpl<$Res, CreateRecipeState>;
}

/// @nodoc
class _$CreateRecipeStateCopyWithImpl<$Res, $Val extends CreateRecipeState>
    implements $CreateRecipeStateCopyWith<$Res> {
  _$CreateRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateRecipeInitialImplCopyWith<$Res> {
  factory _$$CreateRecipeInitialImplCopyWith(_$CreateRecipeInitialImpl value,
          $Res Function(_$CreateRecipeInitialImpl) then) =
      __$$CreateRecipeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRecipeInitialImplCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$CreateRecipeInitialImpl>
    implements _$$CreateRecipeInitialImplCopyWith<$Res> {
  __$$CreateRecipeInitialImplCopyWithImpl(_$CreateRecipeInitialImpl _value,
      $Res Function(_$CreateRecipeInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRecipeInitialImpl implements CreateRecipeInitial {
  const _$CreateRecipeInitialImpl();

  @override
  String toString() {
    return 'CreateRecipeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecipeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int recipeId) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int recipeId)? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int recipeId)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRecipeInitial value) initial,
    required TResult Function(CreateRecipeLoading value) loading,
    required TResult Function(CreateRecipeSuccess value) success,
    required TResult Function(CreateRecipeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRecipeInitial value)? initial,
    TResult? Function(CreateRecipeLoading value)? loading,
    TResult? Function(CreateRecipeSuccess value)? success,
    TResult? Function(CreateRecipeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRecipeInitial value)? initial,
    TResult Function(CreateRecipeLoading value)? loading,
    TResult Function(CreateRecipeSuccess value)? success,
    TResult Function(CreateRecipeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateRecipeInitial implements CreateRecipeState {
  const factory CreateRecipeInitial() = _$CreateRecipeInitialImpl;
}

/// @nodoc
abstract class _$$CreateRecipeLoadingImplCopyWith<$Res> {
  factory _$$CreateRecipeLoadingImplCopyWith(_$CreateRecipeLoadingImpl value,
          $Res Function(_$CreateRecipeLoadingImpl) then) =
      __$$CreateRecipeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRecipeLoadingImplCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$CreateRecipeLoadingImpl>
    implements _$$CreateRecipeLoadingImplCopyWith<$Res> {
  __$$CreateRecipeLoadingImplCopyWithImpl(_$CreateRecipeLoadingImpl _value,
      $Res Function(_$CreateRecipeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRecipeLoadingImpl implements CreateRecipeLoading {
  const _$CreateRecipeLoadingImpl();

  @override
  String toString() {
    return 'CreateRecipeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecipeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int recipeId) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int recipeId)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int recipeId)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRecipeInitial value) initial,
    required TResult Function(CreateRecipeLoading value) loading,
    required TResult Function(CreateRecipeSuccess value) success,
    required TResult Function(CreateRecipeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRecipeInitial value)? initial,
    TResult? Function(CreateRecipeLoading value)? loading,
    TResult? Function(CreateRecipeSuccess value)? success,
    TResult? Function(CreateRecipeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRecipeInitial value)? initial,
    TResult Function(CreateRecipeLoading value)? loading,
    TResult Function(CreateRecipeSuccess value)? success,
    TResult Function(CreateRecipeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateRecipeLoading implements CreateRecipeState {
  const factory CreateRecipeLoading() = _$CreateRecipeLoadingImpl;
}

/// @nodoc
abstract class _$$CreateRecipeSuccessImplCopyWith<$Res> {
  factory _$$CreateRecipeSuccessImplCopyWith(_$CreateRecipeSuccessImpl value,
          $Res Function(_$CreateRecipeSuccessImpl) then) =
      __$$CreateRecipeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int recipeId});
}

/// @nodoc
class __$$CreateRecipeSuccessImplCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$CreateRecipeSuccessImpl>
    implements _$$CreateRecipeSuccessImplCopyWith<$Res> {
  __$$CreateRecipeSuccessImplCopyWithImpl(_$CreateRecipeSuccessImpl _value,
      $Res Function(_$CreateRecipeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_$CreateRecipeSuccessImpl(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateRecipeSuccessImpl implements CreateRecipeSuccess {
  const _$CreateRecipeSuccessImpl({required this.recipeId});

  @override
  final int recipeId;

  @override
  String toString() {
    return 'CreateRecipeState.success(recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecipeSuccessImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRecipeSuccessImplCopyWith<_$CreateRecipeSuccessImpl> get copyWith =>
      __$$CreateRecipeSuccessImplCopyWithImpl<_$CreateRecipeSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int recipeId) success,
    required TResult Function() error,
  }) {
    return success(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int recipeId)? success,
    TResult? Function()? error,
  }) {
    return success?.call(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int recipeId)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRecipeInitial value) initial,
    required TResult Function(CreateRecipeLoading value) loading,
    required TResult Function(CreateRecipeSuccess value) success,
    required TResult Function(CreateRecipeError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRecipeInitial value)? initial,
    TResult? Function(CreateRecipeLoading value)? loading,
    TResult? Function(CreateRecipeSuccess value)? success,
    TResult? Function(CreateRecipeError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRecipeInitial value)? initial,
    TResult Function(CreateRecipeLoading value)? loading,
    TResult Function(CreateRecipeSuccess value)? success,
    TResult Function(CreateRecipeError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateRecipeSuccess implements CreateRecipeState {
  const factory CreateRecipeSuccess({required final int recipeId}) =
      _$CreateRecipeSuccessImpl;

  int get recipeId;
  @JsonKey(ignore: true)
  _$$CreateRecipeSuccessImplCopyWith<_$CreateRecipeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRecipeErrorImplCopyWith<$Res> {
  factory _$$CreateRecipeErrorImplCopyWith(_$CreateRecipeErrorImpl value,
          $Res Function(_$CreateRecipeErrorImpl) then) =
      __$$CreateRecipeErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRecipeErrorImplCopyWithImpl<$Res>
    extends _$CreateRecipeStateCopyWithImpl<$Res, _$CreateRecipeErrorImpl>
    implements _$$CreateRecipeErrorImplCopyWith<$Res> {
  __$$CreateRecipeErrorImplCopyWithImpl(_$CreateRecipeErrorImpl _value,
      $Res Function(_$CreateRecipeErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateRecipeErrorImpl implements CreateRecipeError {
  const _$CreateRecipeErrorImpl();

  @override
  String toString() {
    return 'CreateRecipeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateRecipeErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int recipeId) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int recipeId)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int recipeId)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRecipeInitial value) initial,
    required TResult Function(CreateRecipeLoading value) loading,
    required TResult Function(CreateRecipeSuccess value) success,
    required TResult Function(CreateRecipeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRecipeInitial value)? initial,
    TResult? Function(CreateRecipeLoading value)? loading,
    TResult? Function(CreateRecipeSuccess value)? success,
    TResult? Function(CreateRecipeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRecipeInitial value)? initial,
    TResult Function(CreateRecipeLoading value)? loading,
    TResult Function(CreateRecipeSuccess value)? success,
    TResult Function(CreateRecipeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateRecipeError implements CreateRecipeState {
  const factory CreateRecipeError() = _$CreateRecipeErrorImpl;
}
