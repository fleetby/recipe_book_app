// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditRecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId) load,
    required TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)
        submit,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId)? load,
    TResult? Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId)? load,
    TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeLoad value) load,
    required TResult Function(EditRecipeSubmit value) submit,
    required TResult Function(EditRecipeDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeLoad value)? load,
    TResult? Function(EditRecipeSubmit value)? submit,
    TResult? Function(EditRecipeDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeLoad value)? load,
    TResult Function(EditRecipeSubmit value)? submit,
    TResult Function(EditRecipeDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRecipeEventCopyWith<$Res> {
  factory $EditRecipeEventCopyWith(
          EditRecipeEvent value, $Res Function(EditRecipeEvent) then) =
      _$EditRecipeEventCopyWithImpl<$Res, EditRecipeEvent>;
}

/// @nodoc
class _$EditRecipeEventCopyWithImpl<$Res, $Val extends EditRecipeEvent>
    implements $EditRecipeEventCopyWith<$Res> {
  _$EditRecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditRecipeLoadImplCopyWith<$Res> {
  factory _$$EditRecipeLoadImplCopyWith(_$EditRecipeLoadImpl value,
          $Res Function(_$EditRecipeLoadImpl) then) =
      __$$EditRecipeLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int recipeId});
}

/// @nodoc
class __$$EditRecipeLoadImplCopyWithImpl<$Res>
    extends _$EditRecipeEventCopyWithImpl<$Res, _$EditRecipeLoadImpl>
    implements _$$EditRecipeLoadImplCopyWith<$Res> {
  __$$EditRecipeLoadImplCopyWithImpl(
      _$EditRecipeLoadImpl _value, $Res Function(_$EditRecipeLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
  }) {
    return _then(_$EditRecipeLoadImpl(
      null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditRecipeLoadImpl implements EditRecipeLoad {
  const _$EditRecipeLoadImpl(this.recipeId);

  @override
  final int recipeId;

  @override
  String toString() {
    return 'EditRecipeEvent.load(recipeId: $recipeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecipeLoadImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRecipeLoadImplCopyWith<_$EditRecipeLoadImpl> get copyWith =>
      __$$EditRecipeLoadImplCopyWithImpl<_$EditRecipeLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId) load,
    required TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)
        submit,
    required TResult Function() delete,
  }) {
    return load(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId)? load,
    TResult? Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult? Function()? delete,
  }) {
    return load?.call(recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId)? load,
    TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeLoad value) load,
    required TResult Function(EditRecipeSubmit value) submit,
    required TResult Function(EditRecipeDelete value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeLoad value)? load,
    TResult? Function(EditRecipeSubmit value)? submit,
    TResult? Function(EditRecipeDelete value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeLoad value)? load,
    TResult Function(EditRecipeSubmit value)? submit,
    TResult Function(EditRecipeDelete value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class EditRecipeLoad implements EditRecipeEvent {
  const factory EditRecipeLoad(final int recipeId) = _$EditRecipeLoadImpl;

  int get recipeId;
  @JsonKey(ignore: true)
  _$$EditRecipeLoadImplCopyWith<_$EditRecipeLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditRecipeSubmitImplCopyWith<$Res> {
  factory _$$EditRecipeSubmitImplCopyWith(_$EditRecipeSubmitImpl value,
          $Res Function(_$EditRecipeSubmitImpl) then) =
      __$$EditRecipeSubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String description,
      String servings,
      String preparationTime,
      List<(String, String)> ingredients,
      List<DirectionsEditorItemViewModel> directions,
      ImageItemViewModel? cover});

  $ImageItemViewModelCopyWith<$Res>? get cover;
}

/// @nodoc
class __$$EditRecipeSubmitImplCopyWithImpl<$Res>
    extends _$EditRecipeEventCopyWithImpl<$Res, _$EditRecipeSubmitImpl>
    implements _$$EditRecipeSubmitImplCopyWith<$Res> {
  __$$EditRecipeSubmitImplCopyWithImpl(_$EditRecipeSubmitImpl _value,
      $Res Function(_$EditRecipeSubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? servings = null,
    Object? preparationTime = null,
    Object? ingredients = null,
    Object? directions = null,
    Object? cover = freezed,
  }) {
    return _then(_$EditRecipeSubmitImpl(
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
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<(String, String)>,
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<DirectionsEditorItemViewModel>,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as ImageItemViewModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageItemViewModelCopyWith<$Res>? get cover {
    if (_value.cover == null) {
      return null;
    }

    return $ImageItemViewModelCopyWith<$Res>(_value.cover!, (value) {
      return _then(_value.copyWith(cover: value));
    });
  }
}

/// @nodoc

class _$EditRecipeSubmitImpl implements EditRecipeSubmit {
  const _$EditRecipeSubmitImpl(
      {required this.title,
      required this.description,
      required this.servings,
      required this.preparationTime,
      required final List<(String, String)> ingredients,
      required final List<DirectionsEditorItemViewModel> directions,
      required this.cover})
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
  final ImageItemViewModel? cover;

  @override
  String toString() {
    return 'EditRecipeEvent.submit(title: $title, description: $description, servings: $servings, preparationTime: $preparationTime, ingredients: $ingredients, directions: $directions, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecipeSubmitImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      servings,
      preparationTime,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_directions),
      cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRecipeSubmitImplCopyWith<_$EditRecipeSubmitImpl> get copyWith =>
      __$$EditRecipeSubmitImplCopyWithImpl<_$EditRecipeSubmitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId) load,
    required TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)
        submit,
    required TResult Function() delete,
  }) {
    return submit(title, description, servings, preparationTime, ingredients,
        directions, cover);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId)? load,
    TResult? Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult? Function()? delete,
  }) {
    return submit?.call(title, description, servings, preparationTime,
        ingredients, directions, cover);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId)? load,
    TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(title, description, servings, preparationTime, ingredients,
          directions, cover);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeLoad value) load,
    required TResult Function(EditRecipeSubmit value) submit,
    required TResult Function(EditRecipeDelete value) delete,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeLoad value)? load,
    TResult? Function(EditRecipeSubmit value)? submit,
    TResult? Function(EditRecipeDelete value)? delete,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeLoad value)? load,
    TResult Function(EditRecipeSubmit value)? submit,
    TResult Function(EditRecipeDelete value)? delete,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class EditRecipeSubmit implements EditRecipeEvent {
  const factory EditRecipeSubmit(
      {required final String title,
      required final String description,
      required final String servings,
      required final String preparationTime,
      required final List<(String, String)> ingredients,
      required final List<DirectionsEditorItemViewModel> directions,
      required final ImageItemViewModel? cover}) = _$EditRecipeSubmitImpl;

  String get title;
  String get description;
  String get servings;
  String get preparationTime;
  List<(String, String)> get ingredients;
  List<DirectionsEditorItemViewModel> get directions;
  ImageItemViewModel? get cover;
  @JsonKey(ignore: true)
  _$$EditRecipeSubmitImplCopyWith<_$EditRecipeSubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditRecipeDeleteImplCopyWith<$Res> {
  factory _$$EditRecipeDeleteImplCopyWith(_$EditRecipeDeleteImpl value,
          $Res Function(_$EditRecipeDeleteImpl) then) =
      __$$EditRecipeDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditRecipeDeleteImplCopyWithImpl<$Res>
    extends _$EditRecipeEventCopyWithImpl<$Res, _$EditRecipeDeleteImpl>
    implements _$$EditRecipeDeleteImplCopyWith<$Res> {
  __$$EditRecipeDeleteImplCopyWithImpl(_$EditRecipeDeleteImpl _value,
      $Res Function(_$EditRecipeDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditRecipeDeleteImpl implements EditRecipeDelete {
  const _$EditRecipeDeleteImpl();

  @override
  String toString() {
    return 'EditRecipeEvent.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditRecipeDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int recipeId) load,
    required TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)
        submit,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int recipeId)? load,
    TResult? Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int recipeId)? load,
    TResult Function(
            String title,
            String description,
            String servings,
            String preparationTime,
            List<(String, String)> ingredients,
            List<DirectionsEditorItemViewModel> directions,
            ImageItemViewModel? cover)?
        submit,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeLoad value) load,
    required TResult Function(EditRecipeSubmit value) submit,
    required TResult Function(EditRecipeDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeLoad value)? load,
    TResult? Function(EditRecipeSubmit value)? submit,
    TResult? Function(EditRecipeDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeLoad value)? load,
    TResult Function(EditRecipeSubmit value)? submit,
    TResult Function(EditRecipeDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class EditRecipeDelete implements EditRecipeEvent {
  const factory EditRecipeDelete() = _$EditRecipeDeleteImpl;
}

/// @nodoc
mixin _$EditRecipeState {
  RecipeModel? get recipe => throw _privateConstructorUsedError;
  EditRecipeStateStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditRecipeStateCopyWith<EditRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRecipeStateCopyWith<$Res> {
  factory $EditRecipeStateCopyWith(
          EditRecipeState value, $Res Function(EditRecipeState) then) =
      _$EditRecipeStateCopyWithImpl<$Res, EditRecipeState>;
  @useResult
  $Res call({RecipeModel? recipe, EditRecipeStateStatus? status});

  $RecipeModelCopyWith<$Res>? get recipe;
  $EditRecipeStateStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$EditRecipeStateCopyWithImpl<$Res, $Val extends EditRecipeState>
    implements $EditRecipeStateCopyWith<$Res> {
  _$EditRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditRecipeStateStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeModelCopyWith<$Res>? get recipe {
    if (_value.recipe == null) {
      return null;
    }

    return $RecipeModelCopyWith<$Res>(_value.recipe!, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditRecipeStateStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $EditRecipeStateStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditRecipeStateImplCopyWith<$Res>
    implements $EditRecipeStateCopyWith<$Res> {
  factory _$$EditRecipeStateImplCopyWith(_$EditRecipeStateImpl value,
          $Res Function(_$EditRecipeStateImpl) then) =
      __$$EditRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecipeModel? recipe, EditRecipeStateStatus? status});

  @override
  $RecipeModelCopyWith<$Res>? get recipe;
  @override
  $EditRecipeStateStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$EditRecipeStateImplCopyWithImpl<$Res>
    extends _$EditRecipeStateCopyWithImpl<$Res, _$EditRecipeStateImpl>
    implements _$$EditRecipeStateImplCopyWith<$Res> {
  __$$EditRecipeStateImplCopyWithImpl(
      _$EditRecipeStateImpl _value, $Res Function(_$EditRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = freezed,
    Object? status = freezed,
  }) {
    return _then(_$EditRecipeStateImpl(
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditRecipeStateStatus?,
    ));
  }
}

/// @nodoc

class _$EditRecipeStateImpl implements _EditRecipeState {
  const _$EditRecipeStateImpl({this.recipe, this.status});

  @override
  final RecipeModel? recipe;
  @override
  final EditRecipeStateStatus? status;

  @override
  String toString() {
    return 'EditRecipeState(recipe: $recipe, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecipeStateImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRecipeStateImplCopyWith<_$EditRecipeStateImpl> get copyWith =>
      __$$EditRecipeStateImplCopyWithImpl<_$EditRecipeStateImpl>(
          this, _$identity);
}

abstract class _EditRecipeState implements EditRecipeState {
  const factory _EditRecipeState(
      {final RecipeModel? recipe,
      final EditRecipeStateStatus? status}) = _$EditRecipeStateImpl;

  @override
  RecipeModel? get recipe;
  @override
  EditRecipeStateStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$EditRecipeStateImplCopyWith<_$EditRecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditRecipeStateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Exception exception, StackTrace stackTrace) error,
    required TResult Function() loading,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Exception exception, StackTrace stackTrace)? error,
    TResult? Function()? loading,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Exception exception, StackTrace stackTrace)? error,
    TResult Function()? loading,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeStateStatusSuccess value) success,
    required TResult Function(EditRecipeStateStatusError value) error,
    required TResult Function(EditRecipeStateStatusLoading value) loading,
    required TResult Function(EditRecipeStateStatusDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeStateStatusSuccess value)? success,
    TResult? Function(EditRecipeStateStatusError value)? error,
    TResult? Function(EditRecipeStateStatusLoading value)? loading,
    TResult? Function(EditRecipeStateStatusDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeStateStatusSuccess value)? success,
    TResult Function(EditRecipeStateStatusError value)? error,
    TResult Function(EditRecipeStateStatusLoading value)? loading,
    TResult Function(EditRecipeStateStatusDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRecipeStateStatusCopyWith<$Res> {
  factory $EditRecipeStateStatusCopyWith(EditRecipeStateStatus value,
          $Res Function(EditRecipeStateStatus) then) =
      _$EditRecipeStateStatusCopyWithImpl<$Res, EditRecipeStateStatus>;
}

/// @nodoc
class _$EditRecipeStateStatusCopyWithImpl<$Res,
        $Val extends EditRecipeStateStatus>
    implements $EditRecipeStateStatusCopyWith<$Res> {
  _$EditRecipeStateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditRecipeStateStatusSuccessImplCopyWith<$Res> {
  factory _$$EditRecipeStateStatusSuccessImplCopyWith(
          _$EditRecipeStateStatusSuccessImpl value,
          $Res Function(_$EditRecipeStateStatusSuccessImpl) then) =
      __$$EditRecipeStateStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditRecipeStateStatusSuccessImplCopyWithImpl<$Res>
    extends _$EditRecipeStateStatusCopyWithImpl<$Res,
        _$EditRecipeStateStatusSuccessImpl>
    implements _$$EditRecipeStateStatusSuccessImplCopyWith<$Res> {
  __$$EditRecipeStateStatusSuccessImplCopyWithImpl(
      _$EditRecipeStateStatusSuccessImpl _value,
      $Res Function(_$EditRecipeStateStatusSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditRecipeStateStatusSuccessImpl
    implements EditRecipeStateStatusSuccess {
  const _$EditRecipeStateStatusSuccessImpl();

  @override
  String toString() {
    return 'EditRecipeStateStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecipeStateStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Exception exception, StackTrace stackTrace) error,
    required TResult Function() loading,
    required TResult Function() deleted,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Exception exception, StackTrace stackTrace)? error,
    TResult? Function()? loading,
    TResult? Function()? deleted,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Exception exception, StackTrace stackTrace)? error,
    TResult Function()? loading,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeStateStatusSuccess value) success,
    required TResult Function(EditRecipeStateStatusError value) error,
    required TResult Function(EditRecipeStateStatusLoading value) loading,
    required TResult Function(EditRecipeStateStatusDeleted value) deleted,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeStateStatusSuccess value)? success,
    TResult? Function(EditRecipeStateStatusError value)? error,
    TResult? Function(EditRecipeStateStatusLoading value)? loading,
    TResult? Function(EditRecipeStateStatusDeleted value)? deleted,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeStateStatusSuccess value)? success,
    TResult Function(EditRecipeStateStatusError value)? error,
    TResult Function(EditRecipeStateStatusLoading value)? loading,
    TResult Function(EditRecipeStateStatusDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EditRecipeStateStatusSuccess implements EditRecipeStateStatus {
  const factory EditRecipeStateStatusSuccess() =
      _$EditRecipeStateStatusSuccessImpl;
}

/// @nodoc
abstract class _$$EditRecipeStateStatusErrorImplCopyWith<$Res> {
  factory _$$EditRecipeStateStatusErrorImplCopyWith(
          _$EditRecipeStateStatusErrorImpl value,
          $Res Function(_$EditRecipeStateStatusErrorImpl) then) =
      __$$EditRecipeStateStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception, StackTrace stackTrace});
}

/// @nodoc
class __$$EditRecipeStateStatusErrorImplCopyWithImpl<$Res>
    extends _$EditRecipeStateStatusCopyWithImpl<$Res,
        _$EditRecipeStateStatusErrorImpl>
    implements _$$EditRecipeStateStatusErrorImplCopyWith<$Res> {
  __$$EditRecipeStateStatusErrorImplCopyWithImpl(
      _$EditRecipeStateStatusErrorImpl _value,
      $Res Function(_$EditRecipeStateStatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
  }) {
    return _then(_$EditRecipeStateStatusErrorImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$EditRecipeStateStatusErrorImpl implements EditRecipeStateStatusError {
  const _$EditRecipeStateStatusErrorImpl(this.exception, this.stackTrace);

  @override
  final Exception exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'EditRecipeStateStatus.error(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecipeStateStatusErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRecipeStateStatusErrorImplCopyWith<_$EditRecipeStateStatusErrorImpl>
      get copyWith => __$$EditRecipeStateStatusErrorImplCopyWithImpl<
          _$EditRecipeStateStatusErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Exception exception, StackTrace stackTrace) error,
    required TResult Function() loading,
    required TResult Function() deleted,
  }) {
    return error(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Exception exception, StackTrace stackTrace)? error,
    TResult? Function()? loading,
    TResult? Function()? deleted,
  }) {
    return error?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Exception exception, StackTrace stackTrace)? error,
    TResult Function()? loading,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeStateStatusSuccess value) success,
    required TResult Function(EditRecipeStateStatusError value) error,
    required TResult Function(EditRecipeStateStatusLoading value) loading,
    required TResult Function(EditRecipeStateStatusDeleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeStateStatusSuccess value)? success,
    TResult? Function(EditRecipeStateStatusError value)? error,
    TResult? Function(EditRecipeStateStatusLoading value)? loading,
    TResult? Function(EditRecipeStateStatusDeleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeStateStatusSuccess value)? success,
    TResult Function(EditRecipeStateStatusError value)? error,
    TResult Function(EditRecipeStateStatusLoading value)? loading,
    TResult Function(EditRecipeStateStatusDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditRecipeStateStatusError implements EditRecipeStateStatus {
  const factory EditRecipeStateStatusError(
          final Exception exception, final StackTrace stackTrace) =
      _$EditRecipeStateStatusErrorImpl;

  Exception get exception;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$EditRecipeStateStatusErrorImplCopyWith<_$EditRecipeStateStatusErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditRecipeStateStatusLoadingImplCopyWith<$Res> {
  factory _$$EditRecipeStateStatusLoadingImplCopyWith(
          _$EditRecipeStateStatusLoadingImpl value,
          $Res Function(_$EditRecipeStateStatusLoadingImpl) then) =
      __$$EditRecipeStateStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditRecipeStateStatusLoadingImplCopyWithImpl<$Res>
    extends _$EditRecipeStateStatusCopyWithImpl<$Res,
        _$EditRecipeStateStatusLoadingImpl>
    implements _$$EditRecipeStateStatusLoadingImplCopyWith<$Res> {
  __$$EditRecipeStateStatusLoadingImplCopyWithImpl(
      _$EditRecipeStateStatusLoadingImpl _value,
      $Res Function(_$EditRecipeStateStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditRecipeStateStatusLoadingImpl
    implements EditRecipeStateStatusLoading {
  const _$EditRecipeStateStatusLoadingImpl();

  @override
  String toString() {
    return 'EditRecipeStateStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecipeStateStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Exception exception, StackTrace stackTrace) error,
    required TResult Function() loading,
    required TResult Function() deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Exception exception, StackTrace stackTrace)? error,
    TResult? Function()? loading,
    TResult? Function()? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Exception exception, StackTrace stackTrace)? error,
    TResult Function()? loading,
    TResult Function()? deleted,
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
    required TResult Function(EditRecipeStateStatusSuccess value) success,
    required TResult Function(EditRecipeStateStatusError value) error,
    required TResult Function(EditRecipeStateStatusLoading value) loading,
    required TResult Function(EditRecipeStateStatusDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeStateStatusSuccess value)? success,
    TResult? Function(EditRecipeStateStatusError value)? error,
    TResult? Function(EditRecipeStateStatusLoading value)? loading,
    TResult? Function(EditRecipeStateStatusDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeStateStatusSuccess value)? success,
    TResult Function(EditRecipeStateStatusError value)? error,
    TResult Function(EditRecipeStateStatusLoading value)? loading,
    TResult Function(EditRecipeStateStatusDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditRecipeStateStatusLoading implements EditRecipeStateStatus {
  const factory EditRecipeStateStatusLoading() =
      _$EditRecipeStateStatusLoadingImpl;
}

/// @nodoc
abstract class _$$EditRecipeStateStatusDeletedImplCopyWith<$Res> {
  factory _$$EditRecipeStateStatusDeletedImplCopyWith(
          _$EditRecipeStateStatusDeletedImpl value,
          $Res Function(_$EditRecipeStateStatusDeletedImpl) then) =
      __$$EditRecipeStateStatusDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditRecipeStateStatusDeletedImplCopyWithImpl<$Res>
    extends _$EditRecipeStateStatusCopyWithImpl<$Res,
        _$EditRecipeStateStatusDeletedImpl>
    implements _$$EditRecipeStateStatusDeletedImplCopyWith<$Res> {
  __$$EditRecipeStateStatusDeletedImplCopyWithImpl(
      _$EditRecipeStateStatusDeletedImpl _value,
      $Res Function(_$EditRecipeStateStatusDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditRecipeStateStatusDeletedImpl
    implements EditRecipeStateStatusDeleted {
  const _$EditRecipeStateStatusDeletedImpl();

  @override
  String toString() {
    return 'EditRecipeStateStatus.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecipeStateStatusDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Exception exception, StackTrace stackTrace) error,
    required TResult Function() loading,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Exception exception, StackTrace stackTrace)? error,
    TResult? Function()? loading,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Exception exception, StackTrace stackTrace)? error,
    TResult Function()? loading,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditRecipeStateStatusSuccess value) success,
    required TResult Function(EditRecipeStateStatusError value) error,
    required TResult Function(EditRecipeStateStatusLoading value) loading,
    required TResult Function(EditRecipeStateStatusDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditRecipeStateStatusSuccess value)? success,
    TResult? Function(EditRecipeStateStatusError value)? error,
    TResult? Function(EditRecipeStateStatusLoading value)? loading,
    TResult? Function(EditRecipeStateStatusDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditRecipeStateStatusSuccess value)? success,
    TResult Function(EditRecipeStateStatusError value)? error,
    TResult Function(EditRecipeStateStatusLoading value)? loading,
    TResult Function(EditRecipeStateStatusDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class EditRecipeStateStatusDeleted implements EditRecipeStateStatus {
  const factory EditRecipeStateStatusDeleted() =
      _$EditRecipeStateStatusDeletedImpl;
}
