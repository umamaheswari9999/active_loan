// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loans_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoansState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Loan> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoansInitial value) initial,
    required TResult Function(_LoansLoading value) loading,
    required TResult Function(_LoansSuccess value) success,
    required TResult Function(_LoansFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoansStateCopyWith<$Res> {
  factory $LoansStateCopyWith(
          LoansState value, $Res Function(LoansState) then) =
      _$LoansStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoansStateCopyWithImpl<$Res> implements $LoansStateCopyWith<$Res> {
  _$LoansStateCopyWithImpl(this._value, this._then);

  final LoansState _value;
  // ignore: unused_field
  final $Res Function(LoansState) _then;
}

/// @nodoc
abstract class _$$_LoansInitialCopyWith<$Res> {
  factory _$$_LoansInitialCopyWith(
          _$_LoansInitial value, $Res Function(_$_LoansInitial) then) =
      __$$_LoansInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoansInitialCopyWithImpl<$Res> extends _$LoansStateCopyWithImpl<$Res>
    implements _$$_LoansInitialCopyWith<$Res> {
  __$$_LoansInitialCopyWithImpl(
      _$_LoansInitial _value, $Res Function(_$_LoansInitial) _then)
      : super(_value, (v) => _then(v as _$_LoansInitial));

  @override
  _$_LoansInitial get _value => super._value as _$_LoansInitial;
}

/// @nodoc

class _$_LoansInitial implements _LoansInitial {
  const _$_LoansInitial();

  @override
  String toString() {
    return 'LoansState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoansInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Loan> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
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
    required TResult Function(_LoansInitial value) initial,
    required TResult Function(_LoansLoading value) loading,
    required TResult Function(_LoansSuccess value) success,
    required TResult Function(_LoansFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoansInitial implements LoansState {
  const factory _LoansInitial() = _$_LoansInitial;
}

/// @nodoc
abstract class _$$_LoansLoadingCopyWith<$Res> {
  factory _$$_LoansLoadingCopyWith(
          _$_LoansLoading value, $Res Function(_$_LoansLoading) then) =
      __$$_LoansLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoansLoadingCopyWithImpl<$Res> extends _$LoansStateCopyWithImpl<$Res>
    implements _$$_LoansLoadingCopyWith<$Res> {
  __$$_LoansLoadingCopyWithImpl(
      _$_LoansLoading _value, $Res Function(_$_LoansLoading) _then)
      : super(_value, (v) => _then(v as _$_LoansLoading));

  @override
  _$_LoansLoading get _value => super._value as _$_LoansLoading;
}

/// @nodoc

class _$_LoansLoading implements _LoansLoading {
  const _$_LoansLoading();

  @override
  String toString() {
    return 'LoansState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoansLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Loan> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
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
    required TResult Function(_LoansInitial value) initial,
    required TResult Function(_LoansLoading value) loading,
    required TResult Function(_LoansSuccess value) success,
    required TResult Function(_LoansFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoansLoading implements LoansState {
  const factory _LoansLoading() = _$_LoansLoading;
}

/// @nodoc
abstract class _$$_LoansSuccessCopyWith<$Res> {
  factory _$$_LoansSuccessCopyWith(
          _$_LoansSuccess value, $Res Function(_$_LoansSuccess) then) =
      __$$_LoansSuccessCopyWithImpl<$Res>;
  $Res call({List<Loan> records, bool hasReachedMax});
}

/// @nodoc
class __$$_LoansSuccessCopyWithImpl<$Res> extends _$LoansStateCopyWithImpl<$Res>
    implements _$$_LoansSuccessCopyWith<$Res> {
  __$$_LoansSuccessCopyWithImpl(
      _$_LoansSuccess _value, $Res Function(_$_LoansSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoansSuccess));

  @override
  _$_LoansSuccess get _value => super._value as _$_LoansSuccess;

  @override
  $Res call({
    Object? records = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_$_LoansSuccess(
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoansSuccess implements _LoansSuccess {
  const _$_LoansSuccess(
      {required final List<Loan> records, required this.hasReachedMax})
      : _records = records;

  final List<Loan> _records;
  @override
  List<Loan> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'LoansState.success(records: $records, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoansSuccess &&
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
  _$$_LoansSuccessCopyWith<_$_LoansSuccess> get copyWith =>
      __$$_LoansSuccessCopyWithImpl<_$_LoansSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Loan> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(records, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(records, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
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
    required TResult Function(_LoansInitial value) initial,
    required TResult Function(_LoansLoading value) loading,
    required TResult Function(_LoansSuccess value) success,
    required TResult Function(_LoansFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoansSuccess implements LoansState {
  const factory _LoansSuccess(
      {required final List<Loan> records,
      required final bool hasReachedMax}) = _$_LoansSuccess;

  List<Loan> get records;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_LoansSuccessCopyWith<_$_LoansSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoansFailureCopyWith<$Res> {
  factory _$$_LoansFailureCopyWith(
          _$_LoansFailure value, $Res Function(_$_LoansFailure) then) =
      __$$_LoansFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoansFailureCopyWithImpl<$Res> extends _$LoansStateCopyWithImpl<$Res>
    implements _$$_LoansFailureCopyWith<$Res> {
  __$$_LoansFailureCopyWithImpl(
      _$_LoansFailure _value, $Res Function(_$_LoansFailure) _then)
      : super(_value, (v) => _then(v as _$_LoansFailure));

  @override
  _$_LoansFailure get _value => super._value as _$_LoansFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_LoansFailure(
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

class _$_LoansFailure implements _LoansFailure {
  const _$_LoansFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LoansState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoansFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LoansFailureCopyWith<_$_LoansFailure> get copyWith =>
      __$$_LoansFailureCopyWithImpl<_$_LoansFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Loan> records, bool hasReachedMax) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Loan> records, bool hasReachedMax)? success,
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
    required TResult Function(_LoansInitial value) initial,
    required TResult Function(_LoansLoading value) loading,
    required TResult Function(_LoansSuccess value) success,
    required TResult Function(_LoansFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoansInitial value)? initial,
    TResult Function(_LoansLoading value)? loading,
    TResult Function(_LoansSuccess value)? success,
    TResult Function(_LoansFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LoansFailure implements LoansState {
  const factory _LoansFailure(final Failure failure) = _$_LoansFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_LoansFailureCopyWith<_$_LoansFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
