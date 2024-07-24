// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ThemeMode preferredThemeMode)
        updatePreferredTheme,
    required TResult Function(Locale? preferredLocale) updatePreferredLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult? Function(Locale? preferredLocale)? updatePreferredLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult Function(Locale? preferredLocale)? updatePreferredLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoad value) load,
    required TResult Function(SettingsUpdatePreferredTheme value)
        updatePreferredTheme,
    required TResult Function(SettingsUpdatePreferredLocale value)
        updatePreferredLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoad value)? load,
    TResult? Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult? Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoad value)? load,
    TResult Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsLoadImplCopyWith<$Res> {
  factory _$$SettingsLoadImplCopyWith(
          _$SettingsLoadImpl value, $Res Function(_$SettingsLoadImpl) then) =
      __$$SettingsLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsLoadImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsLoadImpl>
    implements _$$SettingsLoadImplCopyWith<$Res> {
  __$$SettingsLoadImplCopyWithImpl(
      _$SettingsLoadImpl _value, $Res Function(_$SettingsLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsLoadImpl implements SettingsLoad {
  const _$SettingsLoadImpl();

  @override
  String toString() {
    return 'SettingsEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ThemeMode preferredThemeMode)
        updatePreferredTheme,
    required TResult Function(Locale? preferredLocale) updatePreferredLocale,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult? Function(Locale? preferredLocale)? updatePreferredLocale,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult Function(Locale? preferredLocale)? updatePreferredLocale,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoad value) load,
    required TResult Function(SettingsUpdatePreferredTheme value)
        updatePreferredTheme,
    required TResult Function(SettingsUpdatePreferredLocale value)
        updatePreferredLocale,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoad value)? load,
    TResult? Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult? Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoad value)? load,
    TResult Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class SettingsLoad implements SettingsEvent {
  const factory SettingsLoad() = _$SettingsLoadImpl;
}

/// @nodoc
abstract class _$$SettingsUpdatePreferredThemeImplCopyWith<$Res> {
  factory _$$SettingsUpdatePreferredThemeImplCopyWith(
          _$SettingsUpdatePreferredThemeImpl value,
          $Res Function(_$SettingsUpdatePreferredThemeImpl) then) =
      __$$SettingsUpdatePreferredThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode preferredThemeMode});
}

/// @nodoc
class __$$SettingsUpdatePreferredThemeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res,
        _$SettingsUpdatePreferredThemeImpl>
    implements _$$SettingsUpdatePreferredThemeImplCopyWith<$Res> {
  __$$SettingsUpdatePreferredThemeImplCopyWithImpl(
      _$SettingsUpdatePreferredThemeImpl _value,
      $Res Function(_$SettingsUpdatePreferredThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredThemeMode = null,
  }) {
    return _then(_$SettingsUpdatePreferredThemeImpl(
      null == preferredThemeMode
          ? _value.preferredThemeMode
          : preferredThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SettingsUpdatePreferredThemeImpl
    implements SettingsUpdatePreferredTheme {
  const _$SettingsUpdatePreferredThemeImpl(this.preferredThemeMode);

  @override
  final ThemeMode preferredThemeMode;

  @override
  String toString() {
    return 'SettingsEvent.updatePreferredTheme(preferredThemeMode: $preferredThemeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsUpdatePreferredThemeImpl &&
            (identical(other.preferredThemeMode, preferredThemeMode) ||
                other.preferredThemeMode == preferredThemeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferredThemeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsUpdatePreferredThemeImplCopyWith<
          _$SettingsUpdatePreferredThemeImpl>
      get copyWith => __$$SettingsUpdatePreferredThemeImplCopyWithImpl<
          _$SettingsUpdatePreferredThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ThemeMode preferredThemeMode)
        updatePreferredTheme,
    required TResult Function(Locale? preferredLocale) updatePreferredLocale,
  }) {
    return updatePreferredTheme(preferredThemeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult? Function(Locale? preferredLocale)? updatePreferredLocale,
  }) {
    return updatePreferredTheme?.call(preferredThemeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult Function(Locale? preferredLocale)? updatePreferredLocale,
    required TResult orElse(),
  }) {
    if (updatePreferredTheme != null) {
      return updatePreferredTheme(preferredThemeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoad value) load,
    required TResult Function(SettingsUpdatePreferredTheme value)
        updatePreferredTheme,
    required TResult Function(SettingsUpdatePreferredLocale value)
        updatePreferredLocale,
  }) {
    return updatePreferredTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoad value)? load,
    TResult? Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult? Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
  }) {
    return updatePreferredTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoad value)? load,
    TResult Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
    required TResult orElse(),
  }) {
    if (updatePreferredTheme != null) {
      return updatePreferredTheme(this);
    }
    return orElse();
  }
}

abstract class SettingsUpdatePreferredTheme implements SettingsEvent {
  const factory SettingsUpdatePreferredTheme(
      final ThemeMode preferredThemeMode) = _$SettingsUpdatePreferredThemeImpl;

  ThemeMode get preferredThemeMode;
  @JsonKey(ignore: true)
  _$$SettingsUpdatePreferredThemeImplCopyWith<
          _$SettingsUpdatePreferredThemeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsUpdatePreferredLocaleImplCopyWith<$Res> {
  factory _$$SettingsUpdatePreferredLocaleImplCopyWith(
          _$SettingsUpdatePreferredLocaleImpl value,
          $Res Function(_$SettingsUpdatePreferredLocaleImpl) then) =
      __$$SettingsUpdatePreferredLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale? preferredLocale});
}

/// @nodoc
class __$$SettingsUpdatePreferredLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res,
        _$SettingsUpdatePreferredLocaleImpl>
    implements _$$SettingsUpdatePreferredLocaleImplCopyWith<$Res> {
  __$$SettingsUpdatePreferredLocaleImplCopyWithImpl(
      _$SettingsUpdatePreferredLocaleImpl _value,
      $Res Function(_$SettingsUpdatePreferredLocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredLocale = freezed,
  }) {
    return _then(_$SettingsUpdatePreferredLocaleImpl(
      freezed == preferredLocale
          ? _value.preferredLocale
          : preferredLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SettingsUpdatePreferredLocaleImpl
    implements SettingsUpdatePreferredLocale {
  const _$SettingsUpdatePreferredLocaleImpl(this.preferredLocale);

  @override
  final Locale? preferredLocale;

  @override
  String toString() {
    return 'SettingsEvent.updatePreferredLocale(preferredLocale: $preferredLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsUpdatePreferredLocaleImpl &&
            (identical(other.preferredLocale, preferredLocale) ||
                other.preferredLocale == preferredLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferredLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsUpdatePreferredLocaleImplCopyWith<
          _$SettingsUpdatePreferredLocaleImpl>
      get copyWith => __$$SettingsUpdatePreferredLocaleImplCopyWithImpl<
          _$SettingsUpdatePreferredLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ThemeMode preferredThemeMode)
        updatePreferredTheme,
    required TResult Function(Locale? preferredLocale) updatePreferredLocale,
  }) {
    return updatePreferredLocale(preferredLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult? Function(Locale? preferredLocale)? updatePreferredLocale,
  }) {
    return updatePreferredLocale?.call(preferredLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ThemeMode preferredThemeMode)? updatePreferredTheme,
    TResult Function(Locale? preferredLocale)? updatePreferredLocale,
    required TResult orElse(),
  }) {
    if (updatePreferredLocale != null) {
      return updatePreferredLocale(preferredLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsLoad value) load,
    required TResult Function(SettingsUpdatePreferredTheme value)
        updatePreferredTheme,
    required TResult Function(SettingsUpdatePreferredLocale value)
        updatePreferredLocale,
  }) {
    return updatePreferredLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsLoad value)? load,
    TResult? Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult? Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
  }) {
    return updatePreferredLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsLoad value)? load,
    TResult Function(SettingsUpdatePreferredTheme value)? updatePreferredTheme,
    TResult Function(SettingsUpdatePreferredLocale value)?
        updatePreferredLocale,
    required TResult orElse(),
  }) {
    if (updatePreferredLocale != null) {
      return updatePreferredLocale(this);
    }
    return orElse();
  }
}

abstract class SettingsUpdatePreferredLocale implements SettingsEvent {
  const factory SettingsUpdatePreferredLocale(final Locale? preferredLocale) =
      _$SettingsUpdatePreferredLocaleImpl;

  Locale? get preferredLocale;
  @JsonKey(ignore: true)
  _$$SettingsUpdatePreferredLocaleImplCopyWith<
          _$SettingsUpdatePreferredLocaleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            ThemeMode preferredThemeMode, Locale? preferredLocale)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode preferredThemeMode, Locale? preferredLocale)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode preferredThemeMode, Locale? preferredLocale)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsInitialImplCopyWith<$Res> {
  factory _$$SettingsInitialImplCopyWith(_$SettingsInitialImpl value,
          $Res Function(_$SettingsInitialImpl) then) =
      __$$SettingsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsInitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsInitialImpl>
    implements _$$SettingsInitialImplCopyWith<$Res> {
  __$$SettingsInitialImplCopyWithImpl(
      _$SettingsInitialImpl _value, $Res Function(_$SettingsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsInitialImpl implements SettingsInitial {
  const _$SettingsInitialImpl();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            ThemeMode preferredThemeMode, Locale? preferredLocale)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode preferredThemeMode, Locale? preferredLocale)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode preferredThemeMode, Locale? preferredLocale)?
        loaded,
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
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingsInitial implements SettingsState {
  const factory SettingsInitial() = _$SettingsInitialImpl;
}

/// @nodoc
abstract class _$$SettingsLoadedImplCopyWith<$Res> {
  factory _$$SettingsLoadedImplCopyWith(_$SettingsLoadedImpl value,
          $Res Function(_$SettingsLoadedImpl) then) =
      __$$SettingsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode preferredThemeMode, Locale? preferredLocale});
}

/// @nodoc
class __$$SettingsLoadedImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadedImpl>
    implements _$$SettingsLoadedImplCopyWith<$Res> {
  __$$SettingsLoadedImplCopyWithImpl(
      _$SettingsLoadedImpl _value, $Res Function(_$SettingsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredThemeMode = null,
    Object? preferredLocale = freezed,
  }) {
    return _then(_$SettingsLoadedImpl(
      preferredThemeMode: null == preferredThemeMode
          ? _value.preferredThemeMode
          : preferredThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      preferredLocale: freezed == preferredLocale
          ? _value.preferredLocale
          : preferredLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SettingsLoadedImpl implements SettingsLoaded {
  const _$SettingsLoadedImpl(
      {required this.preferredThemeMode, required this.preferredLocale});

  @override
  final ThemeMode preferredThemeMode;
  @override
  final Locale? preferredLocale;

  @override
  String toString() {
    return 'SettingsState.loaded(preferredThemeMode: $preferredThemeMode, preferredLocale: $preferredLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadedImpl &&
            (identical(other.preferredThemeMode, preferredThemeMode) ||
                other.preferredThemeMode == preferredThemeMode) &&
            (identical(other.preferredLocale, preferredLocale) ||
                other.preferredLocale == preferredLocale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, preferredThemeMode, preferredLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      __$$SettingsLoadedImplCopyWithImpl<_$SettingsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            ThemeMode preferredThemeMode, Locale? preferredLocale)
        loaded,
  }) {
    return loaded(preferredThemeMode, preferredLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode preferredThemeMode, Locale? preferredLocale)?
        loaded,
  }) {
    return loaded?.call(preferredThemeMode, preferredLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode preferredThemeMode, Locale? preferredLocale)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(preferredThemeMode, preferredLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingsLoaded implements SettingsState {
  const factory SettingsLoaded(
      {required final ThemeMode preferredThemeMode,
      required final Locale? preferredLocale}) = _$SettingsLoadedImpl;

  ThemeMode get preferredThemeMode;
  Locale? get preferredLocale;
  @JsonKey(ignore: true)
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
