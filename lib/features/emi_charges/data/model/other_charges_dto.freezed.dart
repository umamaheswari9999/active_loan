// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'other_charges_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtherChargesDto _$OtherChargesDtoFromJson(Map<String, dynamic> json) {
  return _OtherChargesDto.fromJson(json);
}

/// @nodoc
mixin _$OtherChargesDto {
  String get invoiceDate => throw _privateConstructorUsedError;
  double get outstandingAmount => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherChargesDtoCopyWith<OtherChargesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherChargesDtoCopyWith<$Res> {
  factory $OtherChargesDtoCopyWith(
          OtherChargesDto value, $Res Function(OtherChargesDto) then) =
      _$OtherChargesDtoCopyWithImpl<$Res>;
  $Res call(
      {String invoiceDate,
      double outstandingAmount,
      String id,
      String description});
}

/// @nodoc
class _$OtherChargesDtoCopyWithImpl<$Res>
    implements $OtherChargesDtoCopyWith<$Res> {
  _$OtherChargesDtoCopyWithImpl(this._value, this._then);

  final OtherChargesDto _value;
  // ignore: unused_field
  final $Res Function(OtherChargesDto) _then;

  @override
  $Res call({
    Object? invoiceDate = freezed,
    Object? outstandingAmount = freezed,
    Object? id = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      outstandingAmount: outstandingAmount == freezed
          ? _value.outstandingAmount
          : outstandingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OtherChargesDtoCopyWith<$Res>
    implements $OtherChargesDtoCopyWith<$Res> {
  factory _$$_OtherChargesDtoCopyWith(
          _$_OtherChargesDto value, $Res Function(_$_OtherChargesDto) then) =
      __$$_OtherChargesDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String invoiceDate,
      double outstandingAmount,
      String id,
      String description});
}

/// @nodoc
class __$$_OtherChargesDtoCopyWithImpl<$Res>
    extends _$OtherChargesDtoCopyWithImpl<$Res>
    implements _$$_OtherChargesDtoCopyWith<$Res> {
  __$$_OtherChargesDtoCopyWithImpl(
      _$_OtherChargesDto _value, $Res Function(_$_OtherChargesDto) _then)
      : super(_value, (v) => _then(v as _$_OtherChargesDto));

  @override
  _$_OtherChargesDto get _value => super._value as _$_OtherChargesDto;

  @override
  $Res call({
    Object? invoiceDate = freezed,
    Object? outstandingAmount = freezed,
    Object? id = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_OtherChargesDto(
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      outstandingAmount: outstandingAmount == freezed
          ? _value.outstandingAmount
          : outstandingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherChargesDto extends _OtherChargesDto {
  const _$_OtherChargesDto(
      {required this.invoiceDate,
      required this.outstandingAmount,
      required this.id,
      required this.description})
      : super._();

  factory _$_OtherChargesDto.fromJson(Map<String, dynamic> json) =>
      _$$_OtherChargesDtoFromJson(json);

  @override
  final String invoiceDate;
  @override
  final double outstandingAmount;
  @override
  final String id;
  @override
  final String description;

  @override
  String toString() {
    return 'OtherChargesDto(invoiceDate: $invoiceDate, outstandingAmount: $outstandingAmount, id: $id, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherChargesDto &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.outstandingAmount, outstandingAmount) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(invoiceDate),
      const DeepCollectionEquality().hash(outstandingAmount),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_OtherChargesDtoCopyWith<_$_OtherChargesDto> get copyWith =>
      __$$_OtherChargesDtoCopyWithImpl<_$_OtherChargesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherChargesDtoToJson(
      this,
    );
  }
}

abstract class _OtherChargesDto extends OtherChargesDto {
  const factory _OtherChargesDto(
      {required final String invoiceDate,
      required final double outstandingAmount,
      required final String id,
      required final String description}) = _$_OtherChargesDto;
  const _OtherChargesDto._() : super._();

  factory _OtherChargesDto.fromJson(Map<String, dynamic> json) =
      _$_OtherChargesDto.fromJson;

  @override
  String get invoiceDate;
  @override
  double get outstandingAmount;
  @override
  String get id;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_OtherChargesDtoCopyWith<_$_OtherChargesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
