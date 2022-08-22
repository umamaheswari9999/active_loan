// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_mandate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerMandateDto _$CustomerMandateDtoFromJson(Map<String, dynamic> json) {
  return _CustomerMandateDto.fromJson(json);
}

/// @nodoc
mixin _$CustomerMandateDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSUmrn', defaultValue: '')
  String get umrn => throw _privateConstructorUsedError;
  @JsonKey(name: 'mandateid', defaultValue: '')
  String get mandateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mandatetype', defaultValue: '')
  String get mandateType => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSEnachStage', defaultValue: '')
  String get mandateStage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSEnachStatus', defaultValue: '')
  String get mandateStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSUrl', defaultValue: '')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSEnachSponserbank', defaultValue: '')
  String get sponserBank => throw _privateConstructorUsedError;
  @JsonKey(name: 'mandateregisteredon', defaultValue: '')
  String get registeredOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSEcsAmountReg', defaultValue: 0.0)
  double get amountRegistered => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSEcsApplicable', defaultValue: false)
  bool get isApplicable => throw _privateConstructorUsedError;
  @JsonKey(name: 'ismandatecancel', defaultValue: false)
  bool get isCanceled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerMandateDtoCopyWith<CustomerMandateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerMandateDtoCopyWith<$Res> {
  factory $CustomerMandateDtoCopyWith(
          CustomerMandateDto value, $Res Function(CustomerMandateDto) then) =
      _$CustomerMandateDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'lDSUmrn', defaultValue: '')
          String umrn,
      @JsonKey(name: 'mandateid', defaultValue: '')
          String mandateId,
      @JsonKey(name: 'mandatetype', defaultValue: '')
          String mandateType,
      @JsonKey(name: 'lDSEnachStage', defaultValue: '')
          String mandateStage,
      @JsonKey(name: 'lDSEnachStatus', defaultValue: '')
          String mandateStatus,
      @JsonKey(name: 'lDSUrl', defaultValue: '')
          String url,
      @JsonKey(name: 'lDSEnachSponserbank', defaultValue: '')
          String sponserBank,
      @JsonKey(name: 'mandateregisteredon', defaultValue: '')
          String registeredOn,
      @JsonKey(name: 'lDSEcsAmountReg', defaultValue: 0.0)
          double amountRegistered,
      @JsonKey(name: 'lDSEcsApplicable', defaultValue: false)
          bool isApplicable,
      @JsonKey(name: 'ismandatecancel', defaultValue: false)
          bool isCanceled});
}

/// @nodoc
class _$CustomerMandateDtoCopyWithImpl<$Res>
    implements $CustomerMandateDtoCopyWith<$Res> {
  _$CustomerMandateDtoCopyWithImpl(this._value, this._then);

  final CustomerMandateDto _value;
  // ignore: unused_field
  final $Res Function(CustomerMandateDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? umrn = freezed,
    Object? mandateId = freezed,
    Object? mandateType = freezed,
    Object? mandateStage = freezed,
    Object? mandateStatus = freezed,
    Object? url = freezed,
    Object? sponserBank = freezed,
    Object? registeredOn = freezed,
    Object? amountRegistered = freezed,
    Object? isApplicable = freezed,
    Object? isCanceled = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      umrn: umrn == freezed
          ? _value.umrn
          : umrn // ignore: cast_nullable_to_non_nullable
              as String,
      mandateId: mandateId == freezed
          ? _value.mandateId
          : mandateId // ignore: cast_nullable_to_non_nullable
              as String,
      mandateType: mandateType == freezed
          ? _value.mandateType
          : mandateType // ignore: cast_nullable_to_non_nullable
              as String,
      mandateStage: mandateStage == freezed
          ? _value.mandateStage
          : mandateStage // ignore: cast_nullable_to_non_nullable
              as String,
      mandateStatus: mandateStatus == freezed
          ? _value.mandateStatus
          : mandateStatus // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      sponserBank: sponserBank == freezed
          ? _value.sponserBank
          : sponserBank // ignore: cast_nullable_to_non_nullable
              as String,
      registeredOn: registeredOn == freezed
          ? _value.registeredOn
          : registeredOn // ignore: cast_nullable_to_non_nullable
              as String,
      amountRegistered: amountRegistered == freezed
          ? _value.amountRegistered
          : amountRegistered // ignore: cast_nullable_to_non_nullable
              as double,
      isApplicable: isApplicable == freezed
          ? _value.isApplicable
          : isApplicable // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanceled: isCanceled == freezed
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerMandateDtoCopyWith<$Res>
    implements $CustomerMandateDtoCopyWith<$Res> {
  factory _$$_CustomerMandateDtoCopyWith(_$_CustomerMandateDto value,
          $Res Function(_$_CustomerMandateDto) then) =
      __$$_CustomerMandateDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'lDSUmrn', defaultValue: '')
          String umrn,
      @JsonKey(name: 'mandateid', defaultValue: '')
          String mandateId,
      @JsonKey(name: 'mandatetype', defaultValue: '')
          String mandateType,
      @JsonKey(name: 'lDSEnachStage', defaultValue: '')
          String mandateStage,
      @JsonKey(name: 'lDSEnachStatus', defaultValue: '')
          String mandateStatus,
      @JsonKey(name: 'lDSUrl', defaultValue: '')
          String url,
      @JsonKey(name: 'lDSEnachSponserbank', defaultValue: '')
          String sponserBank,
      @JsonKey(name: 'mandateregisteredon', defaultValue: '')
          String registeredOn,
      @JsonKey(name: 'lDSEcsAmountReg', defaultValue: 0.0)
          double amountRegistered,
      @JsonKey(name: 'lDSEcsApplicable', defaultValue: false)
          bool isApplicable,
      @JsonKey(name: 'ismandatecancel', defaultValue: false)
          bool isCanceled});
}

/// @nodoc
class __$$_CustomerMandateDtoCopyWithImpl<$Res>
    extends _$CustomerMandateDtoCopyWithImpl<$Res>
    implements _$$_CustomerMandateDtoCopyWith<$Res> {
  __$$_CustomerMandateDtoCopyWithImpl(
      _$_CustomerMandateDto _value, $Res Function(_$_CustomerMandateDto) _then)
      : super(_value, (v) => _then(v as _$_CustomerMandateDto));

  @override
  _$_CustomerMandateDto get _value => super._value as _$_CustomerMandateDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? umrn = freezed,
    Object? mandateId = freezed,
    Object? mandateType = freezed,
    Object? mandateStage = freezed,
    Object? mandateStatus = freezed,
    Object? url = freezed,
    Object? sponserBank = freezed,
    Object? registeredOn = freezed,
    Object? amountRegistered = freezed,
    Object? isApplicable = freezed,
    Object? isCanceled = freezed,
  }) {
    return _then(_$_CustomerMandateDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      umrn: umrn == freezed
          ? _value.umrn
          : umrn // ignore: cast_nullable_to_non_nullable
              as String,
      mandateId: mandateId == freezed
          ? _value.mandateId
          : mandateId // ignore: cast_nullable_to_non_nullable
              as String,
      mandateType: mandateType == freezed
          ? _value.mandateType
          : mandateType // ignore: cast_nullable_to_non_nullable
              as String,
      mandateStage: mandateStage == freezed
          ? _value.mandateStage
          : mandateStage // ignore: cast_nullable_to_non_nullable
              as String,
      mandateStatus: mandateStatus == freezed
          ? _value.mandateStatus
          : mandateStatus // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      sponserBank: sponserBank == freezed
          ? _value.sponserBank
          : sponserBank // ignore: cast_nullable_to_non_nullable
              as String,
      registeredOn: registeredOn == freezed
          ? _value.registeredOn
          : registeredOn // ignore: cast_nullable_to_non_nullable
              as String,
      amountRegistered: amountRegistered == freezed
          ? _value.amountRegistered
          : amountRegistered // ignore: cast_nullable_to_non_nullable
              as double,
      isApplicable: isApplicable == freezed
          ? _value.isApplicable
          : isApplicable // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanceled: isCanceled == freezed
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerMandateDto extends _CustomerMandateDto {
  const _$_CustomerMandateDto(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'lDSUmrn', defaultValue: '')
          required this.umrn,
      @JsonKey(name: 'mandateid', defaultValue: '')
          required this.mandateId,
      @JsonKey(name: 'mandatetype', defaultValue: '')
          required this.mandateType,
      @JsonKey(name: 'lDSEnachStage', defaultValue: '')
          required this.mandateStage,
      @JsonKey(name: 'lDSEnachStatus', defaultValue: '')
          required this.mandateStatus,
      @JsonKey(name: 'lDSUrl', defaultValue: '')
          required this.url,
      @JsonKey(name: 'lDSEnachSponserbank', defaultValue: '')
          required this.sponserBank,
      @JsonKey(name: 'mandateregisteredon', defaultValue: '')
          required this.registeredOn,
      @JsonKey(name: 'lDSEcsAmountReg', defaultValue: 0.0)
          required this.amountRegistered,
      @JsonKey(name: 'lDSEcsApplicable', defaultValue: false)
          required this.isApplicable,
      @JsonKey(name: 'ismandatecancel', defaultValue: false)
          required this.isCanceled})
      : super._();

  factory _$_CustomerMandateDto.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerMandateDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'lDSUmrn', defaultValue: '')
  final String umrn;
  @override
  @JsonKey(name: 'mandateid', defaultValue: '')
  final String mandateId;
  @override
  @JsonKey(name: 'mandatetype', defaultValue: '')
  final String mandateType;
  @override
  @JsonKey(name: 'lDSEnachStage', defaultValue: '')
  final String mandateStage;
  @override
  @JsonKey(name: 'lDSEnachStatus', defaultValue: '')
  final String mandateStatus;
  @override
  @JsonKey(name: 'lDSUrl', defaultValue: '')
  final String url;
  @override
  @JsonKey(name: 'lDSEnachSponserbank', defaultValue: '')
  final String sponserBank;
  @override
  @JsonKey(name: 'mandateregisteredon', defaultValue: '')
  final String registeredOn;
  @override
  @JsonKey(name: 'lDSEcsAmountReg', defaultValue: 0.0)
  final double amountRegistered;
  @override
  @JsonKey(name: 'lDSEcsApplicable', defaultValue: false)
  final bool isApplicable;
  @override
  @JsonKey(name: 'ismandatecancel', defaultValue: false)
  final bool isCanceled;

  @override
  String toString() {
    return 'CustomerMandateDto(id: $id, umrn: $umrn, mandateId: $mandateId, mandateType: $mandateType, mandateStage: $mandateStage, mandateStatus: $mandateStatus, url: $url, sponserBank: $sponserBank, registeredOn: $registeredOn, amountRegistered: $amountRegistered, isApplicable: $isApplicable, isCanceled: $isCanceled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerMandateDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.umrn, umrn) &&
            const DeepCollectionEquality().equals(other.mandateId, mandateId) &&
            const DeepCollectionEquality()
                .equals(other.mandateType, mandateType) &&
            const DeepCollectionEquality()
                .equals(other.mandateStage, mandateStage) &&
            const DeepCollectionEquality()
                .equals(other.mandateStatus, mandateStatus) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.sponserBank, sponserBank) &&
            const DeepCollectionEquality()
                .equals(other.registeredOn, registeredOn) &&
            const DeepCollectionEquality()
                .equals(other.amountRegistered, amountRegistered) &&
            const DeepCollectionEquality()
                .equals(other.isApplicable, isApplicable) &&
            const DeepCollectionEquality()
                .equals(other.isCanceled, isCanceled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(umrn),
      const DeepCollectionEquality().hash(mandateId),
      const DeepCollectionEquality().hash(mandateType),
      const DeepCollectionEquality().hash(mandateStage),
      const DeepCollectionEquality().hash(mandateStatus),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(sponserBank),
      const DeepCollectionEquality().hash(registeredOn),
      const DeepCollectionEquality().hash(amountRegistered),
      const DeepCollectionEquality().hash(isApplicable),
      const DeepCollectionEquality().hash(isCanceled));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerMandateDtoCopyWith<_$_CustomerMandateDto> get copyWith =>
      __$$_CustomerMandateDtoCopyWithImpl<_$_CustomerMandateDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerMandateDtoToJson(
      this,
    );
  }
}

abstract class _CustomerMandateDto extends CustomerMandateDto {
  const factory _CustomerMandateDto(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'lDSUmrn', defaultValue: '')
          required final String umrn,
      @JsonKey(name: 'mandateid', defaultValue: '')
          required final String mandateId,
      @JsonKey(name: 'mandatetype', defaultValue: '')
          required final String mandateType,
      @JsonKey(name: 'lDSEnachStage', defaultValue: '')
          required final String mandateStage,
      @JsonKey(name: 'lDSEnachStatus', defaultValue: '')
          required final String mandateStatus,
      @JsonKey(name: 'lDSUrl', defaultValue: '')
          required final String url,
      @JsonKey(name: 'lDSEnachSponserbank', defaultValue: '')
          required final String sponserBank,
      @JsonKey(name: 'mandateregisteredon', defaultValue: '')
          required final String registeredOn,
      @JsonKey(name: 'lDSEcsAmountReg', defaultValue: 0.0)
          required final double amountRegistered,
      @JsonKey(name: 'lDSEcsApplicable', defaultValue: false)
          required final bool isApplicable,
      @JsonKey(name: 'ismandatecancel', defaultValue: false)
          required final bool isCanceled}) = _$_CustomerMandateDto;
  const _CustomerMandateDto._() : super._();

  factory _CustomerMandateDto.fromJson(Map<String, dynamic> json) =
      _$_CustomerMandateDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'lDSUmrn', defaultValue: '')
  String get umrn;
  @override
  @JsonKey(name: 'mandateid', defaultValue: '')
  String get mandateId;
  @override
  @JsonKey(name: 'mandatetype', defaultValue: '')
  String get mandateType;
  @override
  @JsonKey(name: 'lDSEnachStage', defaultValue: '')
  String get mandateStage;
  @override
  @JsonKey(name: 'lDSEnachStatus', defaultValue: '')
  String get mandateStatus;
  @override
  @JsonKey(name: 'lDSUrl', defaultValue: '')
  String get url;
  @override
  @JsonKey(name: 'lDSEnachSponserbank', defaultValue: '')
  String get sponserBank;
  @override
  @JsonKey(name: 'mandateregisteredon', defaultValue: '')
  String get registeredOn;
  @override
  @JsonKey(name: 'lDSEcsAmountReg', defaultValue: 0.0)
  double get amountRegistered;
  @override
  @JsonKey(name: 'lDSEcsApplicable', defaultValue: false)
  bool get isApplicable;
  @override
  @JsonKey(name: 'ismandatecancel', defaultValue: false)
  bool get isCanceled;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerMandateDtoCopyWith<_$_CustomerMandateDto> get copyWith =>
      throw _privateConstructorUsedError;
}
