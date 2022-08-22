// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoanDto _$LoanDtoFromJson(Map<String, dynamic> json) {
  return _LoanDto.fromJson(json);
}

/// @nodoc
mixin _$LoanDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanno')
  String get loanNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'customername', defaultValue: '')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobilenumber')
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'prooftypenumber')
  String? get proofTypeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanamount', defaultValue: 0)
  double get loanAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanpreapproved', defaultValue: false)
  bool get isPreApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'loandisburse', defaultValue: false)
  bool get isDisbursed => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanrejected', defaultValue: false)
  bool get isRejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'creationDate')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rejectreason')
  String? get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSApploanstatus')
  String? get appLoanStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanDtoCopyWith<LoanDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanDtoCopyWith<$Res> {
  factory $LoanDtoCopyWith(LoanDto value, $Res Function(LoanDto) then) =
      _$LoanDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'loanno') String loanNo,
      @JsonKey(name: 'customername', defaultValue: '') String customerName,
      @JsonKey(name: 'mobilenumber') String? mobileNumber,
      @JsonKey(name: 'prooftypenumber') String? proofTypeNumber,
      @JsonKey(name: 'loanamount', defaultValue: 0) double loanAmount,
      @JsonKey(name: 'loanpreapproved', defaultValue: false) bool isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false) bool isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false) bool isRejected,
      @JsonKey(name: 'creationDate') String createdAt,
      @JsonKey(name: 'rejectreason') String? rejectReason,
      @JsonKey(name: 'lDSApploanstatus') String? appLoanStatus});
}

/// @nodoc
class _$LoanDtoCopyWithImpl<$Res> implements $LoanDtoCopyWith<$Res> {
  _$LoanDtoCopyWithImpl(this._value, this._then);

  final LoanDto _value;
  // ignore: unused_field
  final $Res Function(LoanDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? loanNo = freezed,
    Object? customerName = freezed,
    Object? mobileNumber = freezed,
    Object? proofTypeNumber = freezed,
    Object? loanAmount = freezed,
    Object? isPreApproved = freezed,
    Object? isDisbursed = freezed,
    Object? isRejected = freezed,
    Object? createdAt = freezed,
    Object? rejectReason = freezed,
    Object? appLoanStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      loanNo: loanNo == freezed
          ? _value.loanNo
          : loanNo // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      proofTypeNumber: proofTypeNumber == freezed
          ? _value.proofTypeNumber
          : proofTypeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      loanAmount: loanAmount == freezed
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isPreApproved: isPreApproved == freezed
          ? _value.isPreApproved
          : isPreApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisbursed: isDisbursed == freezed
          ? _value.isDisbursed
          : isDisbursed // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: isRejected == freezed
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      rejectReason: rejectReason == freezed
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      appLoanStatus: appLoanStatus == freezed
          ? _value.appLoanStatus
          : appLoanStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoanDtoCopyWith<$Res> implements $LoanDtoCopyWith<$Res> {
  factory _$$_LoanDtoCopyWith(
          _$_LoanDto value, $Res Function(_$_LoanDto) then) =
      __$$_LoanDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'loanno') String loanNo,
      @JsonKey(name: 'customername', defaultValue: '') String customerName,
      @JsonKey(name: 'mobilenumber') String? mobileNumber,
      @JsonKey(name: 'prooftypenumber') String? proofTypeNumber,
      @JsonKey(name: 'loanamount', defaultValue: 0) double loanAmount,
      @JsonKey(name: 'loanpreapproved', defaultValue: false) bool isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false) bool isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false) bool isRejected,
      @JsonKey(name: 'creationDate') String createdAt,
      @JsonKey(name: 'rejectreason') String? rejectReason,
      @JsonKey(name: 'lDSApploanstatus') String? appLoanStatus});
}

/// @nodoc
class __$$_LoanDtoCopyWithImpl<$Res> extends _$LoanDtoCopyWithImpl<$Res>
    implements _$$_LoanDtoCopyWith<$Res> {
  __$$_LoanDtoCopyWithImpl(_$_LoanDto _value, $Res Function(_$_LoanDto) _then)
      : super(_value, (v) => _then(v as _$_LoanDto));

  @override
  _$_LoanDto get _value => super._value as _$_LoanDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? loanNo = freezed,
    Object? customerName = freezed,
    Object? mobileNumber = freezed,
    Object? proofTypeNumber = freezed,
    Object? loanAmount = freezed,
    Object? isPreApproved = freezed,
    Object? isDisbursed = freezed,
    Object? isRejected = freezed,
    Object? createdAt = freezed,
    Object? rejectReason = freezed,
    Object? appLoanStatus = freezed,
  }) {
    return _then(_$_LoanDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      loanNo: loanNo == freezed
          ? _value.loanNo
          : loanNo // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      proofTypeNumber: proofTypeNumber == freezed
          ? _value.proofTypeNumber
          : proofTypeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      loanAmount: loanAmount == freezed
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isPreApproved: isPreApproved == freezed
          ? _value.isPreApproved
          : isPreApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisbursed: isDisbursed == freezed
          ? _value.isDisbursed
          : isDisbursed // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejected: isRejected == freezed
          ? _value.isRejected
          : isRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      rejectReason: rejectReason == freezed
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      appLoanStatus: appLoanStatus == freezed
          ? _value.appLoanStatus
          : appLoanStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoanDto extends _LoanDto {
  const _$_LoanDto(
      {required this.id,
      @JsonKey(name: 'loanno')
          required this.loanNo,
      @JsonKey(name: 'customername', defaultValue: '')
          required this.customerName,
      @JsonKey(name: 'mobilenumber')
          this.mobileNumber,
      @JsonKey(name: 'prooftypenumber')
          this.proofTypeNumber,
      @JsonKey(name: 'loanamount', defaultValue: 0)
          required this.loanAmount,
      @JsonKey(name: 'loanpreapproved', defaultValue: false)
          required this.isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false)
          required this.isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false)
          required this.isRejected,
      @JsonKey(name: 'creationDate')
          required this.createdAt,
      @JsonKey(name: 'rejectreason')
          this.rejectReason,
      @JsonKey(name: 'lDSApploanstatus')
          this.appLoanStatus})
      : super._();

  factory _$_LoanDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoanDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'loanno')
  final String loanNo;
  @override
  @JsonKey(name: 'customername', defaultValue: '')
  final String customerName;
  @override
  @JsonKey(name: 'mobilenumber')
  final String? mobileNumber;
  @override
  @JsonKey(name: 'prooftypenumber')
  final String? proofTypeNumber;
  @override
  @JsonKey(name: 'loanamount', defaultValue: 0)
  final double loanAmount;
  @override
  @JsonKey(name: 'loanpreapproved', defaultValue: false)
  final bool isPreApproved;
  @override
  @JsonKey(name: 'loandisburse', defaultValue: false)
  final bool isDisbursed;
  @override
  @JsonKey(name: 'loanrejected', defaultValue: false)
  final bool isRejected;
  @override
  @JsonKey(name: 'creationDate')
  final String createdAt;
  @override
  @JsonKey(name: 'rejectreason')
  final String? rejectReason;
  @override
  @JsonKey(name: 'lDSApploanstatus')
  final String? appLoanStatus;

  @override
  String toString() {
    return 'LoanDto(id: $id, loanNo: $loanNo, customerName: $customerName, mobileNumber: $mobileNumber, proofTypeNumber: $proofTypeNumber, loanAmount: $loanAmount, isPreApproved: $isPreApproved, isDisbursed: $isDisbursed, isRejected: $isRejected, createdAt: $createdAt, rejectReason: $rejectReason, appLoanStatus: $appLoanStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.loanNo, loanNo) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.proofTypeNumber, proofTypeNumber) &&
            const DeepCollectionEquality()
                .equals(other.loanAmount, loanAmount) &&
            const DeepCollectionEquality()
                .equals(other.isPreApproved, isPreApproved) &&
            const DeepCollectionEquality()
                .equals(other.isDisbursed, isDisbursed) &&
            const DeepCollectionEquality()
                .equals(other.isRejected, isRejected) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.rejectReason, rejectReason) &&
            const DeepCollectionEquality()
                .equals(other.appLoanStatus, appLoanStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(loanNo),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(proofTypeNumber),
      const DeepCollectionEquality().hash(loanAmount),
      const DeepCollectionEquality().hash(isPreApproved),
      const DeepCollectionEquality().hash(isDisbursed),
      const DeepCollectionEquality().hash(isRejected),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(rejectReason),
      const DeepCollectionEquality().hash(appLoanStatus));

  @JsonKey(ignore: true)
  @override
  _$$_LoanDtoCopyWith<_$_LoanDto> get copyWith =>
      __$$_LoanDtoCopyWithImpl<_$_LoanDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoanDtoToJson(
      this,
    );
  }
}

abstract class _LoanDto extends LoanDto {
  const factory _LoanDto(
      {required final String id,
      @JsonKey(name: 'loanno')
          required final String loanNo,
      @JsonKey(name: 'customername', defaultValue: '')
          required final String customerName,
      @JsonKey(name: 'mobilenumber')
          final String? mobileNumber,
      @JsonKey(name: 'prooftypenumber')
          final String? proofTypeNumber,
      @JsonKey(name: 'loanamount', defaultValue: 0)
          required final double loanAmount,
      @JsonKey(name: 'loanpreapproved', defaultValue: false)
          required final bool isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false)
          required final bool isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false)
          required final bool isRejected,
      @JsonKey(name: 'creationDate')
          required final String createdAt,
      @JsonKey(name: 'rejectreason')
          final String? rejectReason,
      @JsonKey(name: 'lDSApploanstatus')
          final String? appLoanStatus}) = _$_LoanDto;
  const _LoanDto._() : super._();

  factory _LoanDto.fromJson(Map<String, dynamic> json) = _$_LoanDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'loanno')
  String get loanNo;
  @override
  @JsonKey(name: 'customername', defaultValue: '')
  String get customerName;
  @override
  @JsonKey(name: 'mobilenumber')
  String? get mobileNumber;
  @override
  @JsonKey(name: 'prooftypenumber')
  String? get proofTypeNumber;
  @override
  @JsonKey(name: 'loanamount', defaultValue: 0)
  double get loanAmount;
  @override
  @JsonKey(name: 'loanpreapproved', defaultValue: false)
  bool get isPreApproved;
  @override
  @JsonKey(name: 'loandisburse', defaultValue: false)
  bool get isDisbursed;
  @override
  @JsonKey(name: 'loanrejected', defaultValue: false)
  bool get isRejected;
  @override
  @JsonKey(name: 'creationDate')
  String get createdAt;
  @override
  @JsonKey(name: 'rejectreason')
  String? get rejectReason;
  @override
  @JsonKey(name: 'lDSApploanstatus')
  String? get appLoanStatus;
  @override
  @JsonKey(ignore: true)
  _$$_LoanDtoCopyWith<_$_LoanDto> get copyWith =>
      throw _privateConstructorUsedError;
}
