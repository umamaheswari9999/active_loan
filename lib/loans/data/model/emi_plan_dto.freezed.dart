// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emi_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmiPlanDto _$EmiPlanDtoFromJson(Map<String, dynamic> json) {
  return _EmiPlanDto.fromJson(json);
}

/// @nodoc
mixin _$EmiPlanDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'planname')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenureinmonths')
  int get tenureInMonths => throw _privateConstructorUsedError;
  @JsonKey(name: 'rateofinterest')
  int get rateOfInterest => throw _privateConstructorUsedError;
  @JsonKey(name: 'downpaymentemi')
  int get downPayment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmiPlanDtoCopyWith<EmiPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmiPlanDtoCopyWith<$Res> {
  factory $EmiPlanDtoCopyWith(
          EmiPlanDto value, $Res Function(EmiPlanDto) then) =
      _$EmiPlanDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'planname') String name,
      @JsonKey(name: 'tenureinmonths') int tenureInMonths,
      @JsonKey(name: 'rateofinterest') int rateOfInterest,
      @JsonKey(name: 'downpaymentemi') int downPayment});
}

/// @nodoc
class _$EmiPlanDtoCopyWithImpl<$Res> implements $EmiPlanDtoCopyWith<$Res> {
  _$EmiPlanDtoCopyWithImpl(this._value, this._then);

  final EmiPlanDto _value;
  // ignore: unused_field
  final $Res Function(EmiPlanDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tenureInMonths = freezed,
    Object? rateOfInterest = freezed,
    Object? downPayment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tenureInMonths: tenureInMonths == freezed
          ? _value.tenureInMonths
          : tenureInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      rateOfInterest: rateOfInterest == freezed
          ? _value.rateOfInterest
          : rateOfInterest // ignore: cast_nullable_to_non_nullable
              as int,
      downPayment: downPayment == freezed
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EmiPlanDtoCopyWith<$Res>
    implements $EmiPlanDtoCopyWith<$Res> {
  factory _$$_EmiPlanDtoCopyWith(
          _$_EmiPlanDto value, $Res Function(_$_EmiPlanDto) then) =
      __$$_EmiPlanDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'planname') String name,
      @JsonKey(name: 'tenureinmonths') int tenureInMonths,
      @JsonKey(name: 'rateofinterest') int rateOfInterest,
      @JsonKey(name: 'downpaymentemi') int downPayment});
}

/// @nodoc
class __$$_EmiPlanDtoCopyWithImpl<$Res> extends _$EmiPlanDtoCopyWithImpl<$Res>
    implements _$$_EmiPlanDtoCopyWith<$Res> {
  __$$_EmiPlanDtoCopyWithImpl(
      _$_EmiPlanDto _value, $Res Function(_$_EmiPlanDto) _then)
      : super(_value, (v) => _then(v as _$_EmiPlanDto));

  @override
  _$_EmiPlanDto get _value => super._value as _$_EmiPlanDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tenureInMonths = freezed,
    Object? rateOfInterest = freezed,
    Object? downPayment = freezed,
  }) {
    return _then(_$_EmiPlanDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tenureInMonths: tenureInMonths == freezed
          ? _value.tenureInMonths
          : tenureInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      rateOfInterest: rateOfInterest == freezed
          ? _value.rateOfInterest
          : rateOfInterest // ignore: cast_nullable_to_non_nullable
              as int,
      downPayment: downPayment == freezed
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmiPlanDto extends _EmiPlanDto {
  const _$_EmiPlanDto(
      {required this.id,
      @JsonKey(name: 'planname') required this.name,
      @JsonKey(name: 'tenureinmonths') required this.tenureInMonths,
      @JsonKey(name: 'rateofinterest') required this.rateOfInterest,
      @JsonKey(name: 'downpaymentemi') required this.downPayment})
      : super._();

  factory _$_EmiPlanDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmiPlanDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'planname')
  final String name;
  @override
  @JsonKey(name: 'tenureinmonths')
  final int tenureInMonths;
  @override
  @JsonKey(name: 'rateofinterest')
  final int rateOfInterest;
  @override
  @JsonKey(name: 'downpaymentemi')
  final int downPayment;

  @override
  String toString() {
    return 'EmiPlanDto(id: $id, name: $name, tenureInMonths: $tenureInMonths, rateOfInterest: $rateOfInterest, downPayment: $downPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmiPlanDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.tenureInMonths, tenureInMonths) &&
            const DeepCollectionEquality()
                .equals(other.rateOfInterest, rateOfInterest) &&
            const DeepCollectionEquality()
                .equals(other.downPayment, downPayment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(tenureInMonths),
      const DeepCollectionEquality().hash(rateOfInterest),
      const DeepCollectionEquality().hash(downPayment));

  @JsonKey(ignore: true)
  @override
  _$$_EmiPlanDtoCopyWith<_$_EmiPlanDto> get copyWith =>
      __$$_EmiPlanDtoCopyWithImpl<_$_EmiPlanDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmiPlanDtoToJson(
      this,
    );
  }
}

abstract class _EmiPlanDto extends EmiPlanDto {
  const factory _EmiPlanDto(
          {required final String id,
          @JsonKey(name: 'planname') required final String name,
          @JsonKey(name: 'tenureinmonths') required final int tenureInMonths,
          @JsonKey(name: 'rateofinterest') required final int rateOfInterest,
          @JsonKey(name: 'downpaymentemi') required final int downPayment}) =
      _$_EmiPlanDto;
  const _EmiPlanDto._() : super._();

  factory _EmiPlanDto.fromJson(Map<String, dynamic> json) =
      _$_EmiPlanDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'planname')
  String get name;
  @override
  @JsonKey(name: 'tenureinmonths')
  int get tenureInMonths;
  @override
  @JsonKey(name: 'rateofinterest')
  int get rateOfInterest;
  @override
  @JsonKey(name: 'downpaymentemi')
  int get downPayment;
  @override
  @JsonKey(ignore: true)
  _$$_EmiPlanDtoCopyWith<_$_EmiPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}
