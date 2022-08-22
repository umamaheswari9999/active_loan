// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerAddressDto _$CustomerAddressDtoFromJson(Map<String, dynamic> json) {
  return _CustomerAddressDto.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddressDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressLine1')
  String get addressLine1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressLine2', defaultValue: '')
  String get addressLine2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'postalCode', defaultValue: '')
  String get postalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'cityName', defaultValue: '')
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country\$_identifier', defaultValue: '')
  String get countryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'region\$_identifier', defaultValue: '')
  String get stateName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAddressDtoCopyWith<CustomerAddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressDtoCopyWith<$Res> {
  factory $CustomerAddressDtoCopyWith(
          CustomerAddressDto value, $Res Function(CustomerAddressDto) then) =
      _$CustomerAddressDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'addressLine1')
          String addressLine1,
      @JsonKey(name: 'addressLine2', defaultValue: '')
          String addressLine2,
      @JsonKey(name: 'postalCode', defaultValue: '')
          String postalCode,
      @JsonKey(name: 'cityName', defaultValue: '')
          String cityName,
      @JsonKey(name: 'country\$_identifier', defaultValue: '')
          String countryName,
      @JsonKey(name: 'region\$_identifier', defaultValue: '')
          String stateName});
}

/// @nodoc
class _$CustomerAddressDtoCopyWithImpl<$Res>
    implements $CustomerAddressDtoCopyWith<$Res> {
  _$CustomerAddressDtoCopyWithImpl(this._value, this._then);

  final CustomerAddressDto _value;
  // ignore: unused_field
  final $Res Function(CustomerAddressDto) _then;

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
abstract class _$$_CustomerAddressDtoCopyWith<$Res>
    implements $CustomerAddressDtoCopyWith<$Res> {
  factory _$$_CustomerAddressDtoCopyWith(_$_CustomerAddressDto value,
          $Res Function(_$_CustomerAddressDto) then) =
      __$$_CustomerAddressDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'addressLine1')
          String addressLine1,
      @JsonKey(name: 'addressLine2', defaultValue: '')
          String addressLine2,
      @JsonKey(name: 'postalCode', defaultValue: '')
          String postalCode,
      @JsonKey(name: 'cityName', defaultValue: '')
          String cityName,
      @JsonKey(name: 'country\$_identifier', defaultValue: '')
          String countryName,
      @JsonKey(name: 'region\$_identifier', defaultValue: '')
          String stateName});
}

/// @nodoc
class __$$_CustomerAddressDtoCopyWithImpl<$Res>
    extends _$CustomerAddressDtoCopyWithImpl<$Res>
    implements _$$_CustomerAddressDtoCopyWith<$Res> {
  __$$_CustomerAddressDtoCopyWithImpl(
      _$_CustomerAddressDto _value, $Res Function(_$_CustomerAddressDto) _then)
      : super(_value, (v) => _then(v as _$_CustomerAddressDto));

  @override
  _$_CustomerAddressDto get _value => super._value as _$_CustomerAddressDto;

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
    return _then(_$_CustomerAddressDto(
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
@JsonSerializable()
class _$_CustomerAddressDto extends _CustomerAddressDto {
  const _$_CustomerAddressDto(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'addressLine1')
          required this.addressLine1,
      @JsonKey(name: 'addressLine2', defaultValue: '')
          required this.addressLine2,
      @JsonKey(name: 'postalCode', defaultValue: '')
          required this.postalCode,
      @JsonKey(name: 'cityName', defaultValue: '')
          required this.cityName,
      @JsonKey(name: 'country\$_identifier', defaultValue: '')
          required this.countryName,
      @JsonKey(name: 'region\$_identifier', defaultValue: '')
          required this.stateName})
      : super._();

  factory _$_CustomerAddressDto.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerAddressDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'addressLine1')
  final String addressLine1;
  @override
  @JsonKey(name: 'addressLine2', defaultValue: '')
  final String addressLine2;
  @override
  @JsonKey(name: 'postalCode', defaultValue: '')
  final String postalCode;
  @override
  @JsonKey(name: 'cityName', defaultValue: '')
  final String cityName;
  @override
  @JsonKey(name: 'country\$_identifier', defaultValue: '')
  final String countryName;
  @override
  @JsonKey(name: 'region\$_identifier', defaultValue: '')
  final String stateName;

  @override
  String toString() {
    return 'CustomerAddressDto(id: $id, addressLine1: $addressLine1, addressLine2: $addressLine2, postalCode: $postalCode, cityName: $cityName, countryName: $countryName, stateName: $stateName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerAddressDto &&
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

  @JsonKey(ignore: true)
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
  _$$_CustomerAddressDtoCopyWith<_$_CustomerAddressDto> get copyWith =>
      __$$_CustomerAddressDtoCopyWithImpl<_$_CustomerAddressDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerAddressDtoToJson(
      this,
    );
  }
}

abstract class _CustomerAddressDto extends CustomerAddressDto {
  const factory _CustomerAddressDto(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'addressLine1')
          required final String addressLine1,
      @JsonKey(name: 'addressLine2', defaultValue: '')
          required final String addressLine2,
      @JsonKey(name: 'postalCode', defaultValue: '')
          required final String postalCode,
      @JsonKey(name: 'cityName', defaultValue: '')
          required final String cityName,
      @JsonKey(name: 'country\$_identifier', defaultValue: '')
          required final String countryName,
      @JsonKey(name: 'region\$_identifier', defaultValue: '')
          required final String stateName}) = _$_CustomerAddressDto;
  const _CustomerAddressDto._() : super._();

  factory _CustomerAddressDto.fromJson(Map<String, dynamic> json) =
      _$_CustomerAddressDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'addressLine1')
  String get addressLine1;
  @override
  @JsonKey(name: 'addressLine2', defaultValue: '')
  String get addressLine2;
  @override
  @JsonKey(name: 'postalCode', defaultValue: '')
  String get postalCode;
  @override
  @JsonKey(name: 'cityName', defaultValue: '')
  String get cityName;
  @override
  @JsonKey(name: 'country\$_identifier', defaultValue: '')
  String get countryName;
  @override
  @JsonKey(name: 'region\$_identifier', defaultValue: '')
  String get stateName;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerAddressDtoCopyWith<_$_CustomerAddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}
