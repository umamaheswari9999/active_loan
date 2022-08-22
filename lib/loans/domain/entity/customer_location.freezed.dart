// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerLocation {
  CustomerAddress? get currentAddress => throw _privateConstructorUsedError;
  CustomerAddress? get permanentAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerLocationCopyWith<CustomerLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerLocationCopyWith<$Res> {
  factory $CustomerLocationCopyWith(
          CustomerLocation value, $Res Function(CustomerLocation) then) =
      _$CustomerLocationCopyWithImpl<$Res>;
  $Res call(
      {CustomerAddress? currentAddress, CustomerAddress? permanentAddress});

  $CustomerAddressCopyWith<$Res>? get currentAddress;
  $CustomerAddressCopyWith<$Res>? get permanentAddress;
}

/// @nodoc
class _$CustomerLocationCopyWithImpl<$Res>
    implements $CustomerLocationCopyWith<$Res> {
  _$CustomerLocationCopyWithImpl(this._value, this._then);

  final CustomerLocation _value;
  // ignore: unused_field
  final $Res Function(CustomerLocation) _then;

  @override
  $Res call({
    Object? currentAddress = freezed,
    Object? permanentAddress = freezed,
  }) {
    return _then(_value.copyWith(
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      permanentAddress: permanentAddress == freezed
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
    ));
  }

  @override
  $CustomerAddressCopyWith<$Res>? get currentAddress {
    if (_value.currentAddress == null) {
      return null;
    }

    return $CustomerAddressCopyWith<$Res>(_value.currentAddress!, (value) {
      return _then(_value.copyWith(currentAddress: value));
    });
  }

  @override
  $CustomerAddressCopyWith<$Res>? get permanentAddress {
    if (_value.permanentAddress == null) {
      return null;
    }

    return $CustomerAddressCopyWith<$Res>(_value.permanentAddress!, (value) {
      return _then(_value.copyWith(permanentAddress: value));
    });
  }
}

/// @nodoc
abstract class _$$_CustomerLocationCopyWith<$Res>
    implements $CustomerLocationCopyWith<$Res> {
  factory _$$_CustomerLocationCopyWith(
          _$_CustomerLocation value, $Res Function(_$_CustomerLocation) then) =
      __$$_CustomerLocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {CustomerAddress? currentAddress, CustomerAddress? permanentAddress});

  @override
  $CustomerAddressCopyWith<$Res>? get currentAddress;
  @override
  $CustomerAddressCopyWith<$Res>? get permanentAddress;
}

/// @nodoc
class __$$_CustomerLocationCopyWithImpl<$Res>
    extends _$CustomerLocationCopyWithImpl<$Res>
    implements _$$_CustomerLocationCopyWith<$Res> {
  __$$_CustomerLocationCopyWithImpl(
      _$_CustomerLocation _value, $Res Function(_$_CustomerLocation) _then)
      : super(_value, (v) => _then(v as _$_CustomerLocation));

  @override
  _$_CustomerLocation get _value => super._value as _$_CustomerLocation;

  @override
  $Res call({
    Object? currentAddress = freezed,
    Object? permanentAddress = freezed,
  }) {
    return _then(_$_CustomerLocation(
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
      permanentAddress: permanentAddress == freezed
          ? _value.permanentAddress
          : permanentAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddress?,
    ));
  }
}

/// @nodoc

class _$_CustomerLocation implements _CustomerLocation {
  const _$_CustomerLocation({this.currentAddress, this.permanentAddress});

  @override
  final CustomerAddress? currentAddress;
  @override
  final CustomerAddress? permanentAddress;

  @override
  String toString() {
    return 'CustomerLocation(currentAddress: $currentAddress, permanentAddress: $permanentAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerLocation &&
            const DeepCollectionEquality()
                .equals(other.currentAddress, currentAddress) &&
            const DeepCollectionEquality()
                .equals(other.permanentAddress, permanentAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentAddress),
      const DeepCollectionEquality().hash(permanentAddress));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerLocationCopyWith<_$_CustomerLocation> get copyWith =>
      __$$_CustomerLocationCopyWithImpl<_$_CustomerLocation>(this, _$identity);
}

abstract class _CustomerLocation implements CustomerLocation {
  const factory _CustomerLocation(
      {final CustomerAddress? currentAddress,
      final CustomerAddress? permanentAddress}) = _$_CustomerLocation;

  @override
  CustomerAddress? get currentAddress;
  @override
  CustomerAddress? get permanentAddress;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerLocationCopyWith<_$_CustomerLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
