// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'other_charges.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtherCharges {
  String get invoiceDate => throw _privateConstructorUsedError;
  double get outstandingAmount => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtherChargesCopyWith<OtherCharges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherChargesCopyWith<$Res> {
  factory $OtherChargesCopyWith(
          OtherCharges value, $Res Function(OtherCharges) then) =
      _$OtherChargesCopyWithImpl<$Res>;
  $Res call(
      {String invoiceDate,
      double outstandingAmount,
      String id,
      String description});
}

/// @nodoc
class _$OtherChargesCopyWithImpl<$Res> implements $OtherChargesCopyWith<$Res> {
  _$OtherChargesCopyWithImpl(this._value, this._then);

  final OtherCharges _value;
  // ignore: unused_field
  final $Res Function(OtherCharges) _then;

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
abstract class _$$_OtherChargesCopyWith<$Res>
    implements $OtherChargesCopyWith<$Res> {
  factory _$$_OtherChargesCopyWith(
          _$_OtherCharges value, $Res Function(_$_OtherCharges) then) =
      __$$_OtherChargesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String invoiceDate,
      double outstandingAmount,
      String id,
      String description});
}

/// @nodoc
class __$$_OtherChargesCopyWithImpl<$Res>
    extends _$OtherChargesCopyWithImpl<$Res>
    implements _$$_OtherChargesCopyWith<$Res> {
  __$$_OtherChargesCopyWithImpl(
      _$_OtherCharges _value, $Res Function(_$_OtherCharges) _then)
      : super(_value, (v) => _then(v as _$_OtherCharges));

  @override
  _$_OtherCharges get _value => super._value as _$_OtherCharges;

  @override
  $Res call({
    Object? invoiceDate = freezed,
    Object? outstandingAmount = freezed,
    Object? id = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_OtherCharges(
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

class _$_OtherCharges implements _OtherCharges {
  const _$_OtherCharges(
      {required this.invoiceDate,
      required this.outstandingAmount,
      required this.id,
      required this.description});

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
    return 'OtherCharges(invoiceDate: $invoiceDate, outstandingAmount: $outstandingAmount, id: $id, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherCharges &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.outstandingAmount, outstandingAmount) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(invoiceDate),
      const DeepCollectionEquality().hash(outstandingAmount),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_OtherChargesCopyWith<_$_OtherCharges> get copyWith =>
      __$$_OtherChargesCopyWithImpl<_$_OtherCharges>(this, _$identity);
}

abstract class _OtherCharges implements OtherCharges {
  const factory _OtherCharges(
      {required final String invoiceDate,
      required final double outstandingAmount,
      required final String id,
      required final String description}) = _$_OtherCharges;

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
  _$$_OtherChargesCopyWith<_$_OtherCharges> get copyWith =>
      throw _privateConstructorUsedError;
}
