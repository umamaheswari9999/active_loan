// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emi_charges_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmiChargesDto _$EmiChargesDtoFromJson(Map<String, dynamic> json) {
  return _EmiChargesDto.fromJson(json);
}

/// @nodoc
mixin _$EmiChargesDto {
  String get emiduedate => throw _privateConstructorUsedError;
  double get outstandingamnt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmiChargesDtoCopyWith<EmiChargesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmiChargesDtoCopyWith<$Res> {
  factory $EmiChargesDtoCopyWith(
          EmiChargesDto value, $Res Function(EmiChargesDto) then) =
      _$EmiChargesDtoCopyWithImpl<$Res>;
  $Res call({String emiduedate, double outstandingamnt, String id});
}

/// @nodoc
class _$EmiChargesDtoCopyWithImpl<$Res>
    implements $EmiChargesDtoCopyWith<$Res> {
  _$EmiChargesDtoCopyWithImpl(this._value, this._then);

  final EmiChargesDto _value;
  // ignore: unused_field
  final $Res Function(EmiChargesDto) _then;

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
abstract class _$$_EmiChargesDtoCopyWith<$Res>
    implements $EmiChargesDtoCopyWith<$Res> {
  factory _$$_EmiChargesDtoCopyWith(
          _$_EmiChargesDto value, $Res Function(_$_EmiChargesDto) then) =
      __$$_EmiChargesDtoCopyWithImpl<$Res>;
  @override
  $Res call({String emiduedate, double outstandingamnt, String id});
}

/// @nodoc
class __$$_EmiChargesDtoCopyWithImpl<$Res>
    extends _$EmiChargesDtoCopyWithImpl<$Res>
    implements _$$_EmiChargesDtoCopyWith<$Res> {
  __$$_EmiChargesDtoCopyWithImpl(
      _$_EmiChargesDto _value, $Res Function(_$_EmiChargesDto) _then)
      : super(_value, (v) => _then(v as _$_EmiChargesDto));

  @override
  _$_EmiChargesDto get _value => super._value as _$_EmiChargesDto;

  @override
  $Res call({
    Object? emiduedate = freezed,
    Object? outstandingamnt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_EmiChargesDto(
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
@JsonSerializable()
class _$_EmiChargesDto extends _EmiChargesDto {
  const _$_EmiChargesDto(
      {required this.emiduedate,
      required this.outstandingamnt,
      required this.id})
      : super._();

  factory _$_EmiChargesDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmiChargesDtoFromJson(json);

  @override
  final String emiduedate;
  @override
  final double outstandingamnt;
  @override
  final String id;

  @override
  String toString() {
    return 'EmiChargesDto(emiduedate: $emiduedate, outstandingamnt: $outstandingamnt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmiChargesDto &&
            const DeepCollectionEquality()
                .equals(other.emiduedate, emiduedate) &&
            const DeepCollectionEquality()
                .equals(other.outstandingamnt, outstandingamnt) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emiduedate),
      const DeepCollectionEquality().hash(outstandingamnt),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_EmiChargesDtoCopyWith<_$_EmiChargesDto> get copyWith =>
      __$$_EmiChargesDtoCopyWithImpl<_$_EmiChargesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmiChargesDtoToJson(
      this,
    );
  }
}

abstract class _EmiChargesDto extends EmiChargesDto {
  const factory _EmiChargesDto(
      {required final String emiduedate,
      required final double outstandingamnt,
      required final String id}) = _$_EmiChargesDto;
  const _EmiChargesDto._() : super._();

  factory _EmiChargesDto.fromJson(Map<String, dynamic> json) =
      _$_EmiChargesDto.fromJson;

  @override
  String get emiduedate;
  @override
  double get outstandingamnt;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_EmiChargesDtoCopyWith<_$_EmiChargesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
