// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_loans_inf_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyLoansInfDto _$MyLoansInfDtoFromJson(Map<String, dynamic> json) {
  return _MyLoansInfDto.fromJson(json);
}

/// @nodoc
mixin _$MyLoansInfDto {
  double get emioutstanding => throw _privateConstructorUsedError;
  double get othercharges => throw _privateConstructorUsedError;
  int get tenure => throw _privateConstructorUsedError;
  String? get nextemidate => throw _privateConstructorUsedError;
  double get emioverdueamount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyLoansInfDtoCopyWith<MyLoansInfDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLoansInfDtoCopyWith<$Res> {
  factory $MyLoansInfDtoCopyWith(
          MyLoansInfDto value, $Res Function(MyLoansInfDto) then) =
      _$MyLoansInfDtoCopyWithImpl<$Res>;
  $Res call(
      {double emioutstanding,
      double othercharges,
      int tenure,
      String? nextemidate,
      double emioverdueamount});
}

/// @nodoc
class _$MyLoansInfDtoCopyWithImpl<$Res>
    implements $MyLoansInfDtoCopyWith<$Res> {
  _$MyLoansInfDtoCopyWithImpl(this._value, this._then);

  final MyLoansInfDto _value;
  // ignore: unused_field
  final $Res Function(MyLoansInfDto) _then;

  @override
  $Res call({
    Object? emioutstanding = freezed,
    Object? othercharges = freezed,
    Object? tenure = freezed,
    Object? nextemidate = freezed,
    Object? emioverdueamount = freezed,
  }) {
    return _then(_value.copyWith(
      emioutstanding: emioutstanding == freezed
          ? _value.emioutstanding
          : emioutstanding // ignore: cast_nullable_to_non_nullable
              as double,
      othercharges: othercharges == freezed
          ? _value.othercharges
          : othercharges // ignore: cast_nullable_to_non_nullable
              as double,
      tenure: tenure == freezed
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as int,
      nextemidate: nextemidate == freezed
          ? _value.nextemidate
          : nextemidate // ignore: cast_nullable_to_non_nullable
              as String?,
      emioverdueamount: emioverdueamount == freezed
          ? _value.emioverdueamount
          : emioverdueamount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MyLoansInfDtoCopyWith<$Res>
    implements $MyLoansInfDtoCopyWith<$Res> {
  factory _$$_MyLoansInfDtoCopyWith(
          _$_MyLoansInfDto value, $Res Function(_$_MyLoansInfDto) then) =
      __$$_MyLoansInfDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {double emioutstanding,
      double othercharges,
      int tenure,
      String? nextemidate,
      double emioverdueamount});
}

/// @nodoc
class __$$_MyLoansInfDtoCopyWithImpl<$Res>
    extends _$MyLoansInfDtoCopyWithImpl<$Res>
    implements _$$_MyLoansInfDtoCopyWith<$Res> {
  __$$_MyLoansInfDtoCopyWithImpl(
      _$_MyLoansInfDto _value, $Res Function(_$_MyLoansInfDto) _then)
      : super(_value, (v) => _then(v as _$_MyLoansInfDto));

  @override
  _$_MyLoansInfDto get _value => super._value as _$_MyLoansInfDto;

  @override
  $Res call({
    Object? emioutstanding = freezed,
    Object? othercharges = freezed,
    Object? tenure = freezed,
    Object? nextemidate = freezed,
    Object? emioverdueamount = freezed,
  }) {
    return _then(_$_MyLoansInfDto(
      emioutstanding: emioutstanding == freezed
          ? _value.emioutstanding
          : emioutstanding // ignore: cast_nullable_to_non_nullable
              as double,
      othercharges: othercharges == freezed
          ? _value.othercharges
          : othercharges // ignore: cast_nullable_to_non_nullable
              as double,
      tenure: tenure == freezed
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as int,
      nextemidate: nextemidate == freezed
          ? _value.nextemidate
          : nextemidate // ignore: cast_nullable_to_non_nullable
              as String?,
      emioverdueamount: emioverdueamount == freezed
          ? _value.emioverdueamount
          : emioverdueamount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyLoansInfDto extends _MyLoansInfDto {
  const _$_MyLoansInfDto(
      {required this.emioutstanding,
      required this.othercharges,
      required this.tenure,
      this.nextemidate,
      required this.emioverdueamount})
      : super._();

  factory _$_MyLoansInfDto.fromJson(Map<String, dynamic> json) =>
      _$$_MyLoansInfDtoFromJson(json);

  @override
  final double emioutstanding;
  @override
  final double othercharges;
  @override
  final int tenure;
  @override
  final String? nextemidate;
  @override
  final double emioverdueamount;

  @override
  String toString() {
    return 'MyLoansInfDto(emioutstanding: $emioutstanding, othercharges: $othercharges, tenure: $tenure, nextemidate: $nextemidate, emioverdueamount: $emioverdueamount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyLoansInfDto &&
            const DeepCollectionEquality()
                .equals(other.emioutstanding, emioutstanding) &&
            const DeepCollectionEquality()
                .equals(other.othercharges, othercharges) &&
            const DeepCollectionEquality().equals(other.tenure, tenure) &&
            const DeepCollectionEquality()
                .equals(other.nextemidate, nextemidate) &&
            const DeepCollectionEquality()
                .equals(other.emioverdueamount, emioverdueamount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emioutstanding),
      const DeepCollectionEquality().hash(othercharges),
      const DeepCollectionEquality().hash(tenure),
      const DeepCollectionEquality().hash(nextemidate),
      const DeepCollectionEquality().hash(emioverdueamount));

  @JsonKey(ignore: true)
  @override
  _$$_MyLoansInfDtoCopyWith<_$_MyLoansInfDto> get copyWith =>
      __$$_MyLoansInfDtoCopyWithImpl<_$_MyLoansInfDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyLoansInfDtoToJson(
      this,
    );
  }
}

abstract class _MyLoansInfDto extends MyLoansInfDto {
  const factory _MyLoansInfDto(
      {required final double emioutstanding,
      required final double othercharges,
      required final int tenure,
      final String? nextemidate,
      required final double emioverdueamount}) = _$_MyLoansInfDto;
  const _MyLoansInfDto._() : super._();

  factory _MyLoansInfDto.fromJson(Map<String, dynamic> json) =
      _$_MyLoansInfDto.fromJson;

  @override
  double get emioutstanding;
  @override
  double get othercharges;
  @override
  int get tenure;
  @override
  String? get nextemidate;
  @override
  double get emioverdueamount;
  @override
  @JsonKey(ignore: true)
  _$$_MyLoansInfDtoCopyWith<_$_MyLoansInfDto> get copyWith =>
      throw _privateConstructorUsedError;
}
