// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerAddress {
  String get id => throw _privateConstructorUsedError;
  String get addressLine1 => throw _privateConstructorUsedError;
  String get addressLine2 => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get countryName => throw _privateConstructorUsedError;
  String get stateName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerAddressCopyWith<CustomerAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressCopyWith<$Res> {
  factory $CustomerAddressCopyWith(
          CustomerAddress value, $Res Function(CustomerAddress) then) =
      _$CustomerAddressCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String addressLine1,
      String addressLine2,
      String postalCode,
      String cityName,
      String countryName,
      String stateName});
}

/// @nodoc
class _$CustomerAddressCopyWithImpl<$Res>
    implements $CustomerAddressCopyWith<$Res> {
  _$CustomerAddressCopyWithImpl(this._value, this._then);

  final CustomerAddress _value;
  // ignore: unused_field
  final $Res Function(CustomerAddress) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? postalCode = freezed,
    Object? cityName = freezed,
    Object? countryName = freezed,
    Object? stateName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: addressLine1 == freezed
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: addressLine2 == freezed
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: stateName == freezed
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerAddressCopyWith<$Res>
    implements $CustomerAddressCopyWith<$Res> {
  factory _$$_CustomerAddressCopyWith(
          _$_CustomerAddress value, $Res Function(_$_CustomerAddress) then) =
      __$$_CustomerAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String addressLine1,
      String addressLine2,
      String postalCode,
      String cityName,
      String countryName,
      String stateName});
}

/// @nodoc
class __$$_CustomerAddressCopyWithImpl<$Res>
    extends _$CustomerAddressCopyWithImpl<$Res>
    implements _$$_CustomerAddressCopyWith<$Res> {
  __$$_CustomerAddressCopyWithImpl(
      _$_CustomerAddress _value, $Res Function(_$_CustomerAddress) _then)
      : super(_value, (v) => _then(v as _$_CustomerAddress));

  @override
  _$_CustomerAddress get _value => super._value as _$_CustomerAddress;

  @override
  $Res call({
    Object? id = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? postalCode = freezed,
    Object? cityName = freezed,
    Object? countryName = freezed,
    Object? stateName = freezed,
  }) {
    return _then(_$_CustomerAddress(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: addressLine1 == freezed
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: addressLine2 == freezed
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: stateName == freezed
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CustomerAddress implements _CustomerAddress {
  const _$_CustomerAddress(
      {required this.id,
      required this.addressLine1,
      required this.addressLine2,
      required this.postalCode,
      required this.cityName,
      required this.countryName,
      required this.stateName});

  @override
  final String id;
  @override
  final String addressLine1;
  @override
  final String addressLine2;
  @override
  final String postalCode;
  @override
  final String cityName;
  @override
  final String countryName;
  @override
  final String stateName;

  @override
  String toString() {
    return 'CustomerAddress(id: $id, addressLine1: $addressLine1, addressLine2: $addressLine2, postalCode: $postalCode, cityName: $cityName, countryName: $countryName, stateName: $stateName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerAddress &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.addressLine1, addressLine1) &&
            const DeepCollectionEquality()
                .equals(other.addressLine2, addressLine2) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other.countryName, countryName) &&
            const DeepCollectionEquality().equals(other.stateName, stateName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(addressLine1),
      const DeepCollectionEquality().hash(addressLine2),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(countryName),
      const DeepCollectionEquality().hash(stateName));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerAddressCopyWith<_$_CustomerAddress> get copyWith =>
      __$$_CustomerAddressCopyWithImpl<_$_CustomerAddress>(this, _$identity);
}

abstract class _CustomerAddress implements CustomerAddress {
  const factory _CustomerAddress(
      {required final String id,
      required final String addressLine1,
      required final String addressLine2,
      required final String postalCode,
      required final String cityName,
      required final String countryName,
      required final String stateName}) = _$_CustomerAddress;

  @override
  String get id;
  @override
  String get addressLine1;
  @override
  String get addressLine2;
  @override
  String get postalCode;
  @override
  String get cityName;
  @override
  String get countryName;
  @override
  String get stateName;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerAddressCopyWith<_$_CustomerAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
