// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$InvalidFieldValueCopyWith<$Res> {
  factory _$$InvalidFieldValueCopyWith(
          _$InvalidFieldValue value, $Res Function(_$InvalidFieldValue) then) =
      __$$InvalidFieldValueCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidFieldValueCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$InvalidFieldValueCopyWith<$Res> {
  __$$InvalidFieldValueCopyWithImpl(
      _$InvalidFieldValue _value, $Res Function(_$InvalidFieldValue) _then)
      : super(_value, (v) => _then(v as _$InvalidFieldValue));

  @override
  _$InvalidFieldValue get _value => super._value as _$InvalidFieldValue;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidFieldValue(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidFieldValue implements InvalidFieldValue {
  _$InvalidFieldValue(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.invalidFieldValue(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidFieldValue &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InvalidFieldValueCopyWith<_$InvalidFieldValue> get copyWith =>
      __$$InvalidFieldValueCopyWithImpl<_$InvalidFieldValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) {
    return invalidFieldValue(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) {
    return invalidFieldValue?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) {
    if (invalidFieldValue != null) {
      return invalidFieldValue(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return invalidFieldValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) {
    return invalidFieldValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (invalidFieldValue != null) {
      return invalidFieldValue(this);
    }
    return orElse();
  }
}

abstract class InvalidFieldValue implements Failure {
  factory InvalidFieldValue(final String? message) = _$InvalidFieldValue;

  String? get message;
  @JsonKey(ignore: true)
  _$$InvalidFieldValueCopyWith<_$InvalidFieldValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetFailureCopyWith<$Res> {
  factory _$$NoInternetFailureCopyWith(
          _$NoInternetFailure value, $Res Function(_$NoInternetFailure) then) =
      __$$NoInternetFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$NoInternetFailureCopyWith<$Res> {
  __$$NoInternetFailureCopyWithImpl(
      _$NoInternetFailure _value, $Res Function(_$NoInternetFailure) _then)
      : super(_value, (v) => _then(v as _$NoInternetFailure));

  @override
  _$NoInternetFailure get _value => super._value as _$NoInternetFailure;
}

/// @nodoc

class _$NoInternetFailure implements NoInternetFailure {
  _$NoInternetFailure();

  @override
  String toString() {
    return 'Failure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternetFailure implements Failure {
  factory NoInternetFailure() = _$NoInternetFailure;
}

/// @nodoc
abstract class _$$UnAuthorizedFailureCopyWith<$Res> {
  factory _$$UnAuthorizedFailureCopyWith(_$UnAuthorizedFailure value,
          $Res Function(_$UnAuthorizedFailure) then) =
      __$$UnAuthorizedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$UnAuthorizedFailureCopyWith<$Res> {
  __$$UnAuthorizedFailureCopyWithImpl(
      _$UnAuthorizedFailure _value, $Res Function(_$UnAuthorizedFailure) _then)
      : super(_value, (v) => _then(v as _$UnAuthorizedFailure));

  @override
  _$UnAuthorizedFailure get _value => super._value as _$UnAuthorizedFailure;
}

/// @nodoc

class _$UnAuthorizedFailure implements UnAuthorizedFailure {
  _$UnAuthorizedFailure();

  @override
  String toString() {
    return 'Failure.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class UnAuthorizedFailure implements Failure {
  factory UnAuthorizedFailure() = _$UnAuthorizedFailure;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ServerFailure(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  _$ServerFailure(this.code, this.message);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) {
    return serverFailure(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) {
    return serverFailure?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  factory ServerFailure(final int code, final String message) = _$ServerFailure;

  int get code;
  String get message;
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiFailureCopyWith<$Res> {
  factory _$$ApiFailureCopyWith(
          _$ApiFailure value, $Res Function(_$ApiFailure) then) =
      __$$ApiFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ApiFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ApiFailureCopyWith<$Res> {
  __$$ApiFailureCopyWithImpl(
      _$ApiFailure _value, $Res Function(_$ApiFailure) _then)
      : super(_value, (v) => _then(v as _$ApiFailure));

  @override
  _$ApiFailure get _value => super._value as _$ApiFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ApiFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiFailure implements ApiFailure {
  _$ApiFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.apiFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ApiFailureCopyWith<_$ApiFailure> get copyWith =>
      __$$ApiFailureCopyWithImpl<_$ApiFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) {
    return apiFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) {
    return apiFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return apiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) {
    return apiFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(this);
    }
    return orElse();
  }
}

abstract class ApiFailure implements Failure {
  factory ApiFailure(final String message) = _$ApiFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$ApiFailureCopyWith<_$ApiFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownApiFailureCopyWith<$Res> {
  factory _$$UnknownApiFailureCopyWith(
          _$UnknownApiFailure value, $Res Function(_$UnknownApiFailure) then) =
      __$$UnknownApiFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownApiFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$UnknownApiFailureCopyWith<$Res> {
  __$$UnknownApiFailureCopyWithImpl(
      _$UnknownApiFailure _value, $Res Function(_$UnknownApiFailure) _then)
      : super(_value, (v) => _then(v as _$UnknownApiFailure));

  @override
  _$UnknownApiFailure get _value => super._value as _$UnknownApiFailure;
}

/// @nodoc

class _$UnknownApiFailure implements UnknownApiFailure {
  _$UnknownApiFailure();

  @override
  String toString() {
    return 'Failure.unknownApiFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownApiFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) {
    return unknownApiFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) {
    return unknownApiFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownApiFailure != null) {
      return unknownApiFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return unknownApiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) {
    return unknownApiFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownApiFailure != null) {
      return unknownApiFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownApiFailure implements Failure {
  factory UnknownApiFailure() = _$UnknownApiFailure;
}

/// @nodoc
abstract class _$$UnknownFailureCopyWith<$Res> {
  factory _$$UnknownFailureCopyWith(
          _$UnknownFailure value, $Res Function(_$UnknownFailure) then) =
      __$$UnknownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$UnknownFailureCopyWith<$Res> {
  __$$UnknownFailureCopyWithImpl(
      _$UnknownFailure _value, $Res Function(_$UnknownFailure) _then)
      : super(_value, (v) => _then(v as _$UnknownFailure));

  @override
  _$UnknownFailure get _value => super._value as _$UnknownFailure;
}

/// @nodoc

class _$UnknownFailure implements UnknownFailure {
  _$UnknownFailure();

  @override
  String toString() {
    return 'Failure.unknownFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) invalidFieldValue,
    required TResult Function() noInternet,
    required TResult Function() unAuthorized,
    required TResult Function(int code, String message) serverFailure,
    required TResult Function(String message) apiFailure,
    required TResult Function() unknownApiFailure,
    required TResult Function() unknownFailure,
  }) {
    return unknownFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
  }) {
    return unknownFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? invalidFieldValue,
    TResult Function()? noInternet,
    TResult Function()? unAuthorized,
    TResult Function(int code, String message)? serverFailure,
    TResult Function(String message)? apiFailure,
    TResult Function()? unknownApiFailure,
    TResult Function()? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidFieldValue value) invalidFieldValue,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(UnAuthorizedFailure value) unAuthorized,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ApiFailure value) apiFailure,
    required TResult Function(UnknownApiFailure value) unknownApiFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidFieldValue value)? invalidFieldValue,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(UnAuthorizedFailure value)? unAuthorized,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ApiFailure value)? apiFailure,
    TResult Function(UnknownApiFailure value)? unknownApiFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  factory UnknownFailure() = _$UnknownFailure;
}
