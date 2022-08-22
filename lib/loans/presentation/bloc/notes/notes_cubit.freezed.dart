// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Note> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotesInitial value) initial,
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res> implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  final NotesState _value;
  // ignore: unused_field
  final $Res Function(NotesState) _then;
}

/// @nodoc
abstract class _$$_NotesInitialCopyWith<$Res> {
  factory _$$_NotesInitialCopyWith(
          _$_NotesInitial value, $Res Function(_$_NotesInitial) then) =
      __$$_NotesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotesInitialCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_NotesInitialCopyWith<$Res> {
  __$$_NotesInitialCopyWithImpl(
      _$_NotesInitial _value, $Res Function(_$_NotesInitial) _then)
      : super(_value, (v) => _then(v as _$_NotesInitial));

  @override
  _$_NotesInitial get _value => super._value as _$_NotesInitial;
}

/// @nodoc

class _$_NotesInitial implements _NotesInitial {
  const _$_NotesInitial();

  @override
  String toString() {
    return 'NotesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Note> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(_NotesInitial value) initial,
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _NotesInitial implements NotesState {
  const factory _NotesInitial() = _$_NotesInitial;
}

/// @nodoc
abstract class _$$_NotesLoadingCopyWith<$Res> {
  factory _$$_NotesLoadingCopyWith(
          _$_NotesLoading value, $Res Function(_$_NotesLoading) then) =
      __$$_NotesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotesLoadingCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_NotesLoadingCopyWith<$Res> {
  __$$_NotesLoadingCopyWithImpl(
      _$_NotesLoading _value, $Res Function(_$_NotesLoading) _then)
      : super(_value, (v) => _then(v as _$_NotesLoading));

  @override
  _$_NotesLoading get _value => super._value as _$_NotesLoading;
}

/// @nodoc

class _$_NotesLoading implements _NotesLoading {
  const _$_NotesLoading();

  @override
  String toString() {
    return 'NotesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Note> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(_NotesInitial value) initial,
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NotesLoading implements NotesState {
  const factory _NotesLoading() = _$_NotesLoading;
}

/// @nodoc
abstract class _$$_NotesSuccessCopyWith<$Res> {
  factory _$$_NotesSuccessCopyWith(
          _$_NotesSuccess value, $Res Function(_$_NotesSuccess) then) =
      __$$_NotesSuccessCopyWithImpl<$Res>;
  $Res call({List<Note> records, bool hasReachedMax});
}

/// @nodoc
class __$$_NotesSuccessCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_NotesSuccessCopyWith<$Res> {
  __$$_NotesSuccessCopyWithImpl(
      _$_NotesSuccess _value, $Res Function(_$_NotesSuccess) _then)
      : super(_value, (v) => _then(v as _$_NotesSuccess));

  @override
  _$_NotesSuccess get _value => super._value as _$_NotesSuccess;

  @override
  $Res call({
    Object? records = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_$_NotesSuccess(
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NotesSuccess implements _NotesSuccess {
  const _$_NotesSuccess(
      {required final List<Note> records, required this.hasReachedMax})
      : _records = records;

  final List<Note> _records;
  @override
  List<Note> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'NotesState.success(records: $records, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesSuccess &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  _$$_NotesSuccessCopyWith<_$_NotesSuccess> get copyWith =>
      __$$_NotesSuccessCopyWithImpl<_$_NotesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Note> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(records, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(records, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(records, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotesInitial value) initial,
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NotesSuccess implements NotesState {
  const factory _NotesSuccess(
      {required final List<Note> records,
      required final bool hasReachedMax}) = _$_NotesSuccess;

  List<Note> get records;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_NotesSuccessCopyWith<_$_NotesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotesFailureCopyWith<$Res> {
  factory _$$_NotesFailureCopyWith(
          _$_NotesFailure value, $Res Function(_$_NotesFailure) then) =
      __$$_NotesFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_NotesFailureCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_NotesFailureCopyWith<$Res> {
  __$$_NotesFailureCopyWithImpl(
      _$_NotesFailure _value, $Res Function(_$_NotesFailure) _then)
      : super(_value, (v) => _then(v as _$_NotesFailure));

  @override
  _$_NotesFailure get _value => super._value as _$_NotesFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_NotesFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_NotesFailure implements _NotesFailure {
  const _$_NotesFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'NotesState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_NotesFailureCopyWith<_$_NotesFailure> get copyWith =>
      __$$_NotesFailureCopyWithImpl<_$_NotesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Note> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Note> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotesInitial value) initial,
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesInitial value)? initial,
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NotesFailure implements NotesState {
  const factory _NotesFailure(final Failure failure) = _$_NotesFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_NotesFailureCopyWith<_$_NotesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
