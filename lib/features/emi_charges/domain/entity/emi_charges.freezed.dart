// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emi_charges.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmiCharges {
  String get emiduedate => throw _privateConstructorUsedError;
  double get outstandingamnt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmiChargesCopyWith<EmiCharges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmiChargesCopyWith<$Res> {
  factory $EmiChargesCopyWith(
          EmiCharges value, $Res Function(EmiCharges) then) =
      _$EmiChargesCopyWithImpl<$Res>;
  $Res call({String emiduedate, double outstandingamnt, String id});
}

/// @nodoc
class _$EmiChargesCopyWithImpl<$Res> implements $EmiChargesCopyWith<$Res> {
  _$EmiChargesCopyWithImpl(this._value, this._then);

  final EmiCharges _value;
  // ignore: unused_field
  final $Res Function(EmiCharges) _then;

  @override
  $Res call({
    Object? emiduedate = freezed,
    Object? outstandingamnt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      emiduedate: emiduedate == freezed
          ? _value.emiduedate
          : emiduedate // ignore: cast_nullable_to_non_nullable
              as String,
      outstandingamnt: outstandingamnt == freezed
          ? _value.outstandingamnt
          : outstandingamnt // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EmiChargesCopyWith<$Res>
    implements $EmiChargesCopyWith<$Res> {
  factory _$$_EmiChargesCopyWith(
          _$_EmiCharges value, $Res Function(_$_EmiCharges) then) =
      __$$_EmiChargesCopyWithImpl<$Res>;
  @override
  $Res call({String emiduedate, double outstandingamnt, String id});
}

/// @nodoc
class __$$_EmiChargesCopyWithImpl<$Res> extends _$EmiChargesCopyWithImpl<$Res>
    implements _$$_EmiChargesCopyWith<$Res> {
  __$$_EmiChargesCopyWithImpl(
      _$_EmiCharges _value, $Res Function(_$_EmiCharges) _then)
      : super(_value, (v) => _then(v as _$_EmiCharges));

  @override
  _$_EmiCharges get _value => super._value as _$_EmiCharges;

  @override
  $Res call({
    Object? emiduedate = freezed,
    Object? outstandingamnt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_EmiCharges(
      emiduedate: emiduedate == freezed
          ? _value.emiduedate
          : emiduedate // ignore: cast_nullable_to_non_nullable
              as String,
      outstandingamnt: outstandingamnt == freezed
          ? _value.outstandingamnt
          : outstandingamnt // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmiCharges implements _EmiCharges {
  const _$_EmiCharges(
      {required this.emiduedate,
      required this.outstandingamnt,
      required this.id});

  @override
  final String emiduedate;
  @override
  final double outstandingamnt;
  @override
  final String id;

  @override
  String toString() {
    return 'EmiCharges(emiduedate: $emiduedate, outstandingamnt: $outstandingamnt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmiCharges &&
            const DeepCollectionEquality()
                .equals(other.emiduedate, emiduedate) &&
            const DeepCollectionEquality()
                .equals(other.outstandingamnt, outstandingamnt) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emiduedate),
      const DeepCollectionEquality().hash(outstandingamnt),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_EmiChargesCopyWith<_$_EmiCharges> get copyWith =>
      __$$_EmiChargesCopyWithImpl<_$_EmiCharges>(this, _$identity);
}

abstract class _EmiCharges implements EmiCharges {
  const factory _EmiCharges(
      {required final String emiduedate,
      required final double outstandingamnt,
      required final String id}) = _$_EmiCharges;

  @override
  String get emiduedate;
  @override
  double get outstandingamnt;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_EmiChargesCopyWith<_$_EmiCharges> get copyWith =>
      throw _privateConstructorUsedError;
}
