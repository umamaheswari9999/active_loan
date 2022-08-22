// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pre_enquiry_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreEnquiryFormDto _$PreEnquiryFormDtoFromJson(Map<String, dynamic> json) {
  return _PreEnquiryFormDto.fromJson(json);
}

/// @nodoc
mixin _$PreEnquiryFormDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customername')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'prooftypenumber')
  String? get poiNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanno')
  String get preEnquiryNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateofbirth')
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobilenumber')
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'panno')
  String? get pan => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'vkycrefno')
  String? get vKycRefId => throw _privateConstructorUsedError;
  @JsonKey(name: 'maritalstatus')
  String? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'occupationtype')
  String? get occupationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'residentialstatus')
  String? get residenceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternatenumber')
  String? get altMobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'fathername')
  String? get fatherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mothername')
  String? get motherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'employername')
  String? get employerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'officephonenumber')
  int? get officePhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'emailid')
  String? get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: 'officialEmail')
  String? get officialEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'designation')
  String? get designation => throw _privateConstructorUsedError;
  @JsonKey(name: 'annualincome')
  double? get annualIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSApploanstatus')
  String? get appLoanStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSAgent')
  String? get emiPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lDSAgent\$_identifier')
  String? get emiPlanName => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanamount')
  double? get loanAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'cibillimit')
  double? get cibilLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'emiamount')
  double? get emiAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'mindownpayment')
  double? get minDownPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'downpaymentcollected')
  double? get downPaymentCollected => throw _privateConstructorUsedError;
  @JsonKey(name: 'advemi')
  double? get advanceEmi => throw _privateConstructorUsedError;
  @JsonKey(name: 'anuintrate')
  double? get annIntRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'docchargesgst')
  double? get docCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'processchargegst')
  double? get processCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'esigndocumentid')
  String? get eSignDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'esignurl')
  String? get eSignUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'esignstatus')
  String? get eSignStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'mandateid')
  String? get eMandateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get eMandateUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'enachstage')
  String? get eMandateStage => throw _privateConstructorUsedError;
  @JsonKey(name: 'enachstatus')
  String? get eMandateStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'bankdecision')
  String? get bankDecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'cibildecision')
  String? get cibilDecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'finaldecision')
  String? get finalDecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanpreapproved', defaultValue: false)
  bool get isPreApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'loandisburse', defaultValue: false)
  bool get isDisbursed => throw _privateConstructorUsedError;
  @JsonKey(name: 'loanrejected', defaultValue: false)
  bool get isRejected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreEnquiryFormDtoCopyWith<PreEnquiryFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreEnquiryFormDtoCopyWith<$Res> {
  factory $PreEnquiryFormDtoCopyWith(
          PreEnquiryFormDto value, $Res Function(PreEnquiryFormDto) then) =
      _$PreEnquiryFormDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'customername') String customerName,
      @JsonKey(name: 'prooftypenumber') String? poiNumber,
      @JsonKey(name: 'loanno') String preEnquiryNumber,
      @JsonKey(name: 'dateofbirth') String? dob,
      @JsonKey(name: 'mobilenumber') String? mobileNumber,
      @JsonKey(name: 'panno') String? pan,
      String? gender,
      @JsonKey(name: 'vkycrefno') String? vKycRefId,
      @JsonKey(name: 'maritalstatus') String? maritalStatus,
      @JsonKey(name: 'occupationtype') String? occupationType,
      @JsonKey(name: 'residentialstatus') String? residenceType,
      @JsonKey(name: 'alternatenumber') String? altMobileNumber,
      @JsonKey(name: 'fathername') String? fatherName,
      @JsonKey(name: 'mothername') String? motherName,
      @JsonKey(name: 'employername') String? employerName,
      @JsonKey(name: 'officephonenumber') int? officePhoneNumber,
      @JsonKey(name: 'emailid') String? emailId,
      @JsonKey(name: 'officialEmail') String? officialEmail,
      @JsonKey(name: 'designation') String? designation,
      @JsonKey(name: 'annualincome') double? annualIncome,
      @JsonKey(name: 'lDSApploanstatus') String? appLoanStatus,
      @JsonKey(name: 'lDSAgent') String? emiPlanId,
      @JsonKey(name: 'lDSAgent\$_identifier') String? emiPlanName,
      @JsonKey(name: 'loanamount') double? loanAmount,
      @JsonKey(name: 'cibillimit') double? cibilLimit,
      @JsonKey(name: 'emiamount') double? emiAmount,
      @JsonKey(name: 'mindownpayment') double? minDownPayment,
      @JsonKey(name: 'downpaymentcollected') double? downPaymentCollected,
      @JsonKey(name: 'advemi') double? advanceEmi,
      @JsonKey(name: 'anuintrate') double? annIntRate,
      @JsonKey(name: 'docchargesgst') double? docCharges,
      @JsonKey(name: 'processchargegst') double? processCharges,
      @JsonKey(name: 'esigndocumentid') String? eSignDocumentId,
      @JsonKey(name: 'esignurl') String? eSignUrl,
      @JsonKey(name: 'esignstatus') String? eSignStatus,
      @JsonKey(name: 'mandateid') String? eMandateId,
      @JsonKey(name: 'url') String? eMandateUrl,
      @JsonKey(name: 'enachstage') String? eMandateStage,
      @JsonKey(name: 'enachstatus') String? eMandateStatus,
      @JsonKey(name: 'bankdecision') String? bankDecision,
      @JsonKey(name: 'cibildecision') String? cibilDecision,
      @JsonKey(name: 'finaldecision') String? finalDecision,
      @JsonKey(name: 'loanpreapproved', defaultValue: false) bool isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false) bool isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false) bool isRejected});
}

/// @nodoc
class _$PreEnquiryFormDtoCopyWithImpl<$Res>
    implements $PreEnquiryFormDtoCopyWith<$Res> {
  _$PreEnquiryFormDtoCopyWithImpl(this._value, this._then);

  final PreEnquiryFormDto _value;
  // ignore: unused_field
  final $Res Function(PreEnquiryFormDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? poiNumber = freezed,
    Object? preEnquiryNumber = freezed,
    Object? dob = freezed,
    Object? mobileNumber = freezed,
    Object? pan = freezed,
    Object? gender = freezed,
    Object? vKycRefId = freezed,
    Object? maritalStatus = freezed,
    Object? occupationType = freezed,
    Object? residenceType = freezed,
    Object? altMobileNumber = freezed,
    Object? fatherName = freezed,
    Object? motherName = freezed,
    Object? employerName = freezed,
    Object? officePhoneNumber = freezed,
    Object? emailId = freezed,
    Object? officialEmail = freezed,
    Object? designation = freezed,
    Object? annualIncome = freezed,
    Object? appLoanStatus = freezed,
    Object? emiPlanId = freezed,
    Object? emiPlanName = freezed,
    Object? loanAmount = freezed,
    Object? cibilLimit = freezed,
    Object? emiAmount = freezed,
    Object? minDownPayment = freezed,
    Object? downPaymentCollected = freezed,
    Object? advanceEmi = freezed,
    Object? annIntRate = freezed,
    Object? docCharges = freezed,
    Object? processCharges = freezed,
    Object? eSignDocumentId = freezed,
    Object? eSignUrl = freezed,
    Object? eSignStatus = freezed,
    Object? eMandateId = freezed,
    Object? eMandateUrl = freezed,
    Object? eMandateStage = freezed,
    Object? eMandateStatus = freezed,
    Object? bankDecision = freezed,
    Object? cibilDecision = freezed,
    Object? finalDecision = freezed,
    Object? isPreApproved = freezed,
    Object? isDisbursed = freezed,
    Object? isRejected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      poiNumber: poiNumber == freezed
          ? _value.poiNumber
          : poiNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      preEnquiryNumber: preEnquiryNumber == freezed
          ? _value.preEnquiryNumber
          : preEnquiryNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pan: pan == freezed
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      vKycRefId: vKycRefId == freezed
          ? _value.vKycRefId
          : vKycRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      occupationType: occupationType == freezed
          ? _value.occupationType
          : occupationType // ignore: cast_nullable_to_non_nullable
              as String?,
      residenceType: residenceType == freezed
          ? _value.residenceType
          : residenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      altMobileNumber: altMobileNumber == freezed
          ? _value.altMobileNumber
          : altMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: fatherName == freezed
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      motherName: motherName == freezed
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String?,
      employerName: employerName == freezed
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String?,
      officePhoneNumber: officePhoneNumber == freezed
          ? _value.officePhoneNumber
          : officePhoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      officialEmail: officialEmail == freezed
          ? _value.officialEmail
          : officialEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      annualIncome: annualIncome == freezed
          ? _value.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as double?,
      appLoanStatus: appLoanStatus == freezed
          ? _value.appLoanStatus
          : appLoanStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      emiPlanId: emiPlanId == freezed
          ? _value.emiPlanId
          : emiPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      emiPlanName: emiPlanName == freezed
          ? _value.emiPlanName
          : emiPlanName // ignore: cast_nullable_to_non_nullable
              as String?,
      loanAmount: loanAmount == freezed
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      cibilLimit: cibilLimit == freezed
          ? _value.cibilLimit
          : cibilLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      emiAmount: emiAmount == freezed
          ? _value.emiAmount
          : emiAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      minDownPayment: minDownPayment == freezed
          ? _value.minDownPayment
          : minDownPayment // ignore: cast_nullable_to_non_nullable
              as double?,
      downPaymentCollected: downPaymentCollected == freezed
          ? _value.downPaymentCollected
          : downPaymentCollected // ignore: cast_nullable_to_non_nullable
              as double?,
      advanceEmi: advanceEmi == freezed
          ? _value.advanceEmi
          : advanceEmi // ignore: cast_nullable_to_non_nullable
              as double?,
      annIntRate: annIntRate == freezed
          ? _value.annIntRate
          : annIntRate // ignore: cast_nullable_to_non_nullable
              as double?,
      docCharges: docCharges == freezed
          ? _value.docCharges
          : docCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      processCharges: processCharges == freezed
          ? _value.processCharges
          : processCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      eSignDocumentId: eSignDocumentId == freezed
          ? _value.eSignDocumentId
          : eSignDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      eSignUrl: eSignUrl == freezed
          ? _value.eSignUrl
          : eSignUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eSignStatus: eSignStatus == freezed
          ? _value.eSignStatus
          : eSignStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateId: eMandateId == freezed
          ? _value.eMandateId
          : eMandateId // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateUrl: eMandateUrl == freezed
          ? _value.eMandateUrl
          : eMandateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateStage: eMandateStage == freezed
          ? _value.eMandateStage
          : eMandateStage // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateStatus: eMandateStatus == freezed
          ? _value.eMandateStatus
          : eMandateStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      bankDecision: bankDecision == freezed
          ? _value.bankDecision
          : bankDecision // ignore: cast_nullable_to_non_nullable
              as String?,
      cibilDecision: cibilDecision == freezed
          ? _value.cibilDecision
          : cibilDecision // ignore: cast_nullable_to_non_nullable
              as String?,
      finalDecision: finalDecision == freezed
          ? _value.finalDecision
          : finalDecision // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
abstract class _$$_PreEnquiryFormDtoCopyWith<$Res>
    implements $PreEnquiryFormDtoCopyWith<$Res> {
  factory _$$_PreEnquiryFormDtoCopyWith(_$_PreEnquiryFormDto value,
          $Res Function(_$_PreEnquiryFormDto) then) =
      __$$_PreEnquiryFormDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'customername') String customerName,
      @JsonKey(name: 'prooftypenumber') String? poiNumber,
      @JsonKey(name: 'loanno') String preEnquiryNumber,
      @JsonKey(name: 'dateofbirth') String? dob,
      @JsonKey(name: 'mobilenumber') String? mobileNumber,
      @JsonKey(name: 'panno') String? pan,
      String? gender,
      @JsonKey(name: 'vkycrefno') String? vKycRefId,
      @JsonKey(name: 'maritalstatus') String? maritalStatus,
      @JsonKey(name: 'occupationtype') String? occupationType,
      @JsonKey(name: 'residentialstatus') String? residenceType,
      @JsonKey(name: 'alternatenumber') String? altMobileNumber,
      @JsonKey(name: 'fathername') String? fatherName,
      @JsonKey(name: 'mothername') String? motherName,
      @JsonKey(name: 'employername') String? employerName,
      @JsonKey(name: 'officephonenumber') int? officePhoneNumber,
      @JsonKey(name: 'emailid') String? emailId,
      @JsonKey(name: 'officialEmail') String? officialEmail,
      @JsonKey(name: 'designation') String? designation,
      @JsonKey(name: 'annualincome') double? annualIncome,
      @JsonKey(name: 'lDSApploanstatus') String? appLoanStatus,
      @JsonKey(name: 'lDSAgent') String? emiPlanId,
      @JsonKey(name: 'lDSAgent\$_identifier') String? emiPlanName,
      @JsonKey(name: 'loanamount') double? loanAmount,
      @JsonKey(name: 'cibillimit') double? cibilLimit,
      @JsonKey(name: 'emiamount') double? emiAmount,
      @JsonKey(name: 'mindownpayment') double? minDownPayment,
      @JsonKey(name: 'downpaymentcollected') double? downPaymentCollected,
      @JsonKey(name: 'advemi') double? advanceEmi,
      @JsonKey(name: 'anuintrate') double? annIntRate,
      @JsonKey(name: 'docchargesgst') double? docCharges,
      @JsonKey(name: 'processchargegst') double? processCharges,
      @JsonKey(name: 'esigndocumentid') String? eSignDocumentId,
      @JsonKey(name: 'esignurl') String? eSignUrl,
      @JsonKey(name: 'esignstatus') String? eSignStatus,
      @JsonKey(name: 'mandateid') String? eMandateId,
      @JsonKey(name: 'url') String? eMandateUrl,
      @JsonKey(name: 'enachstage') String? eMandateStage,
      @JsonKey(name: 'enachstatus') String? eMandateStatus,
      @JsonKey(name: 'bankdecision') String? bankDecision,
      @JsonKey(name: 'cibildecision') String? cibilDecision,
      @JsonKey(name: 'finaldecision') String? finalDecision,
      @JsonKey(name: 'loanpreapproved', defaultValue: false) bool isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false) bool isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false) bool isRejected});
}

/// @nodoc
class __$$_PreEnquiryFormDtoCopyWithImpl<$Res>
    extends _$PreEnquiryFormDtoCopyWithImpl<$Res>
    implements _$$_PreEnquiryFormDtoCopyWith<$Res> {
  __$$_PreEnquiryFormDtoCopyWithImpl(
      _$_PreEnquiryFormDto _value, $Res Function(_$_PreEnquiryFormDto) _then)
      : super(_value, (v) => _then(v as _$_PreEnquiryFormDto));

  @override
  _$_PreEnquiryFormDto get _value => super._value as _$_PreEnquiryFormDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? poiNumber = freezed,
    Object? preEnquiryNumber = freezed,
    Object? dob = freezed,
    Object? mobileNumber = freezed,
    Object? pan = freezed,
    Object? gender = freezed,
    Object? vKycRefId = freezed,
    Object? maritalStatus = freezed,
    Object? occupationType = freezed,
    Object? residenceType = freezed,
    Object? altMobileNumber = freezed,
    Object? fatherName = freezed,
    Object? motherName = freezed,
    Object? employerName = freezed,
    Object? officePhoneNumber = freezed,
    Object? emailId = freezed,
    Object? officialEmail = freezed,
    Object? designation = freezed,
    Object? annualIncome = freezed,
    Object? appLoanStatus = freezed,
    Object? emiPlanId = freezed,
    Object? emiPlanName = freezed,
    Object? loanAmount = freezed,
    Object? cibilLimit = freezed,
    Object? emiAmount = freezed,
    Object? minDownPayment = freezed,
    Object? downPaymentCollected = freezed,
    Object? advanceEmi = freezed,
    Object? annIntRate = freezed,
    Object? docCharges = freezed,
    Object? processCharges = freezed,
    Object? eSignDocumentId = freezed,
    Object? eSignUrl = freezed,
    Object? eSignStatus = freezed,
    Object? eMandateId = freezed,
    Object? eMandateUrl = freezed,
    Object? eMandateStage = freezed,
    Object? eMandateStatus = freezed,
    Object? bankDecision = freezed,
    Object? cibilDecision = freezed,
    Object? finalDecision = freezed,
    Object? isPreApproved = freezed,
    Object? isDisbursed = freezed,
    Object? isRejected = freezed,
  }) {
    return _then(_$_PreEnquiryFormDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      poiNumber: poiNumber == freezed
          ? _value.poiNumber
          : poiNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      preEnquiryNumber: preEnquiryNumber == freezed
          ? _value.preEnquiryNumber
          : preEnquiryNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      pan: pan == freezed
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      vKycRefId: vKycRefId == freezed
          ? _value.vKycRefId
          : vKycRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      occupationType: occupationType == freezed
          ? _value.occupationType
          : occupationType // ignore: cast_nullable_to_non_nullable
              as String?,
      residenceType: residenceType == freezed
          ? _value.residenceType
          : residenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      altMobileNumber: altMobileNumber == freezed
          ? _value.altMobileNumber
          : altMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: fatherName == freezed
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      motherName: motherName == freezed
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String?,
      employerName: employerName == freezed
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String?,
      officePhoneNumber: officePhoneNumber == freezed
          ? _value.officePhoneNumber
          : officePhoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      officialEmail: officialEmail == freezed
          ? _value.officialEmail
          : officialEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      annualIncome: annualIncome == freezed
          ? _value.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as double?,
      appLoanStatus: appLoanStatus == freezed
          ? _value.appLoanStatus
          : appLoanStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      emiPlanId: emiPlanId == freezed
          ? _value.emiPlanId
          : emiPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      emiPlanName: emiPlanName == freezed
          ? _value.emiPlanName
          : emiPlanName // ignore: cast_nullable_to_non_nullable
              as String?,
      loanAmount: loanAmount == freezed
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      cibilLimit: cibilLimit == freezed
          ? _value.cibilLimit
          : cibilLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      emiAmount: emiAmount == freezed
          ? _value.emiAmount
          : emiAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      minDownPayment: minDownPayment == freezed
          ? _value.minDownPayment
          : minDownPayment // ignore: cast_nullable_to_non_nullable
              as double?,
      downPaymentCollected: downPaymentCollected == freezed
          ? _value.downPaymentCollected
          : downPaymentCollected // ignore: cast_nullable_to_non_nullable
              as double?,
      advanceEmi: advanceEmi == freezed
          ? _value.advanceEmi
          : advanceEmi // ignore: cast_nullable_to_non_nullable
              as double?,
      annIntRate: annIntRate == freezed
          ? _value.annIntRate
          : annIntRate // ignore: cast_nullable_to_non_nullable
              as double?,
      docCharges: docCharges == freezed
          ? _value.docCharges
          : docCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      processCharges: processCharges == freezed
          ? _value.processCharges
          : processCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      eSignDocumentId: eSignDocumentId == freezed
          ? _value.eSignDocumentId
          : eSignDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      eSignUrl: eSignUrl == freezed
          ? _value.eSignUrl
          : eSignUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eSignStatus: eSignStatus == freezed
          ? _value.eSignStatus
          : eSignStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateId: eMandateId == freezed
          ? _value.eMandateId
          : eMandateId // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateUrl: eMandateUrl == freezed
          ? _value.eMandateUrl
          : eMandateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateStage: eMandateStage == freezed
          ? _value.eMandateStage
          : eMandateStage // ignore: cast_nullable_to_non_nullable
              as String?,
      eMandateStatus: eMandateStatus == freezed
          ? _value.eMandateStatus
          : eMandateStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      bankDecision: bankDecision == freezed
          ? _value.bankDecision
          : bankDecision // ignore: cast_nullable_to_non_nullable
              as String?,
      cibilDecision: cibilDecision == freezed
          ? _value.cibilDecision
          : cibilDecision // ignore: cast_nullable_to_non_nullable
              as String?,
      finalDecision: finalDecision == freezed
          ? _value.finalDecision
          : finalDecision // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreEnquiryFormDto extends _PreEnquiryFormDto {
  const _$_PreEnquiryFormDto(
      {required this.id,
      @JsonKey(name: 'customername')
          required this.customerName,
      @JsonKey(name: 'prooftypenumber')
          this.poiNumber,
      @JsonKey(name: 'loanno')
          required this.preEnquiryNumber,
      @JsonKey(name: 'dateofbirth')
          this.dob,
      @JsonKey(name: 'mobilenumber')
          this.mobileNumber,
      @JsonKey(name: 'panno')
          this.pan,
      this.gender,
      @JsonKey(name: 'vkycrefno')
          this.vKycRefId,
      @JsonKey(name: 'maritalstatus')
          this.maritalStatus,
      @JsonKey(name: 'occupationtype')
          this.occupationType,
      @JsonKey(name: 'residentialstatus')
          this.residenceType,
      @JsonKey(name: 'alternatenumber')
          this.altMobileNumber,
      @JsonKey(name: 'fathername')
          this.fatherName,
      @JsonKey(name: 'mothername')
          this.motherName,
      @JsonKey(name: 'employername')
          this.employerName,
      @JsonKey(name: 'officephonenumber')
          this.officePhoneNumber,
      @JsonKey(name: 'emailid')
          this.emailId,
      @JsonKey(name: 'officialEmail')
          this.officialEmail,
      @JsonKey(name: 'designation')
          this.designation,
      @JsonKey(name: 'annualincome')
          this.annualIncome,
      @JsonKey(name: 'lDSApploanstatus')
          this.appLoanStatus,
      @JsonKey(name: 'lDSAgent')
          this.emiPlanId,
      @JsonKey(name: 'lDSAgent\$_identifier')
          this.emiPlanName,
      @JsonKey(name: 'loanamount')
          this.loanAmount,
      @JsonKey(name: 'cibillimit')
          this.cibilLimit,
      @JsonKey(name: 'emiamount')
          this.emiAmount,
      @JsonKey(name: 'mindownpayment')
          this.minDownPayment,
      @JsonKey(name: 'downpaymentcollected')
          this.downPaymentCollected,
      @JsonKey(name: 'advemi')
          this.advanceEmi,
      @JsonKey(name: 'anuintrate')
          this.annIntRate,
      @JsonKey(name: 'docchargesgst')
          this.docCharges,
      @JsonKey(name: 'processchargegst')
          this.processCharges,
      @JsonKey(name: 'esigndocumentid')
          this.eSignDocumentId,
      @JsonKey(name: 'esignurl')
          this.eSignUrl,
      @JsonKey(name: 'esignstatus')
          this.eSignStatus,
      @JsonKey(name: 'mandateid')
          this.eMandateId,
      @JsonKey(name: 'url')
          this.eMandateUrl,
      @JsonKey(name: 'enachstage')
          this.eMandateStage,
      @JsonKey(name: 'enachstatus')
          this.eMandateStatus,
      @JsonKey(name: 'bankdecision')
          this.bankDecision,
      @JsonKey(name: 'cibildecision')
          this.cibilDecision,
      @JsonKey(name: 'finaldecision')
          this.finalDecision,
      @JsonKey(name: 'loanpreapproved', defaultValue: false)
          required this.isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false)
          required this.isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false)
          required this.isRejected})
      : super._();

  factory _$_PreEnquiryFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_PreEnquiryFormDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'customername')
  final String customerName;
  @override
  @JsonKey(name: 'prooftypenumber')
  final String? poiNumber;
  @override
  @JsonKey(name: 'loanno')
  final String preEnquiryNumber;
  @override
  @JsonKey(name: 'dateofbirth')
  final String? dob;
  @override
  @JsonKey(name: 'mobilenumber')
  final String? mobileNumber;
  @override
  @JsonKey(name: 'panno')
  final String? pan;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'vkycrefno')
  final String? vKycRefId;
  @override
  @JsonKey(name: 'maritalstatus')
  final String? maritalStatus;
  @override
  @JsonKey(name: 'occupationtype')
  final String? occupationType;
  @override
  @JsonKey(name: 'residentialstatus')
  final String? residenceType;
  @override
  @JsonKey(name: 'alternatenumber')
  final String? altMobileNumber;
  @override
  @JsonKey(name: 'fathername')
  final String? fatherName;
  @override
  @JsonKey(name: 'mothername')
  final String? motherName;
  @override
  @JsonKey(name: 'employername')
  final String? employerName;
  @override
  @JsonKey(name: 'officephonenumber')
  final int? officePhoneNumber;
  @override
  @JsonKey(name: 'emailid')
  final String? emailId;
  @override
  @JsonKey(name: 'officialEmail')
  final String? officialEmail;
  @override
  @JsonKey(name: 'designation')
  final String? designation;
  @override
  @JsonKey(name: 'annualincome')
  final double? annualIncome;
  @override
  @JsonKey(name: 'lDSApploanstatus')
  final String? appLoanStatus;
  @override
  @JsonKey(name: 'lDSAgent')
  final String? emiPlanId;
  @override
  @JsonKey(name: 'lDSAgent\$_identifier')
  final String? emiPlanName;
  @override
  @JsonKey(name: 'loanamount')
  final double? loanAmount;
  @override
  @JsonKey(name: 'cibillimit')
  final double? cibilLimit;
  @override
  @JsonKey(name: 'emiamount')
  final double? emiAmount;
  @override
  @JsonKey(name: 'mindownpayment')
  final double? minDownPayment;
  @override
  @JsonKey(name: 'downpaymentcollected')
  final double? downPaymentCollected;
  @override
  @JsonKey(name: 'advemi')
  final double? advanceEmi;
  @override
  @JsonKey(name: 'anuintrate')
  final double? annIntRate;
  @override
  @JsonKey(name: 'docchargesgst')
  final double? docCharges;
  @override
  @JsonKey(name: 'processchargegst')
  final double? processCharges;
  @override
  @JsonKey(name: 'esigndocumentid')
  final String? eSignDocumentId;
  @override
  @JsonKey(name: 'esignurl')
  final String? eSignUrl;
  @override
  @JsonKey(name: 'esignstatus')
  final String? eSignStatus;
  @override
  @JsonKey(name: 'mandateid')
  final String? eMandateId;
  @override
  @JsonKey(name: 'url')
  final String? eMandateUrl;
  @override
  @JsonKey(name: 'enachstage')
  final String? eMandateStage;
  @override
  @JsonKey(name: 'enachstatus')
  final String? eMandateStatus;
  @override
  @JsonKey(name: 'bankdecision')
  final String? bankDecision;
  @override
  @JsonKey(name: 'cibildecision')
  final String? cibilDecision;
  @override
  @JsonKey(name: 'finaldecision')
  final String? finalDecision;
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
  String toString() {
    return 'PreEnquiryFormDto(id: $id, customerName: $customerName, poiNumber: $poiNumber, preEnquiryNumber: $preEnquiryNumber, dob: $dob, mobileNumber: $mobileNumber, pan: $pan, gender: $gender, vKycRefId: $vKycRefId, maritalStatus: $maritalStatus, occupationType: $occupationType, residenceType: $residenceType, altMobileNumber: $altMobileNumber, fatherName: $fatherName, motherName: $motherName, employerName: $employerName, officePhoneNumber: $officePhoneNumber, emailId: $emailId, officialEmail: $officialEmail, designation: $designation, annualIncome: $annualIncome, appLoanStatus: $appLoanStatus, emiPlanId: $emiPlanId, emiPlanName: $emiPlanName, loanAmount: $loanAmount, cibilLimit: $cibilLimit, emiAmount: $emiAmount, minDownPayment: $minDownPayment, downPaymentCollected: $downPaymentCollected, advanceEmi: $advanceEmi, annIntRate: $annIntRate, docCharges: $docCharges, processCharges: $processCharges, eSignDocumentId: $eSignDocumentId, eSignUrl: $eSignUrl, eSignStatus: $eSignStatus, eMandateId: $eMandateId, eMandateUrl: $eMandateUrl, eMandateStage: $eMandateStage, eMandateStatus: $eMandateStatus, bankDecision: $bankDecision, cibilDecision: $cibilDecision, finalDecision: $finalDecision, isPreApproved: $isPreApproved, isDisbursed: $isDisbursed, isRejected: $isRejected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreEnquiryFormDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality().equals(other.poiNumber, poiNumber) &&
            const DeepCollectionEquality()
                .equals(other.preEnquiryNumber, preEnquiryNumber) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.pan, pan) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.vKycRefId, vKycRefId) &&
            const DeepCollectionEquality()
                .equals(other.maritalStatus, maritalStatus) &&
            const DeepCollectionEquality()
                .equals(other.occupationType, occupationType) &&
            const DeepCollectionEquality()
                .equals(other.residenceType, residenceType) &&
            const DeepCollectionEquality()
                .equals(other.altMobileNumber, altMobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.fatherName, fatherName) &&
            const DeepCollectionEquality()
                .equals(other.motherName, motherName) &&
            const DeepCollectionEquality()
                .equals(other.employerName, employerName) &&
            const DeepCollectionEquality()
                .equals(other.officePhoneNumber, officePhoneNumber) &&
            const DeepCollectionEquality().equals(other.emailId, emailId) &&
            const DeepCollectionEquality()
                .equals(other.officialEmail, officialEmail) &&
            const DeepCollectionEquality()
                .equals(other.designation, designation) &&
            const DeepCollectionEquality()
                .equals(other.annualIncome, annualIncome) &&
            const DeepCollectionEquality()
                .equals(other.appLoanStatus, appLoanStatus) &&
            const DeepCollectionEquality().equals(other.emiPlanId, emiPlanId) &&
            const DeepCollectionEquality()
                .equals(other.emiPlanName, emiPlanName) &&
            const DeepCollectionEquality()
                .equals(other.loanAmount, loanAmount) &&
            const DeepCollectionEquality()
                .equals(other.cibilLimit, cibilLimit) &&
            const DeepCollectionEquality().equals(other.emiAmount, emiAmount) &&
            const DeepCollectionEquality()
                .equals(other.minDownPayment, minDownPayment) &&
            const DeepCollectionEquality()
                .equals(other.downPaymentCollected, downPaymentCollected) &&
            const DeepCollectionEquality()
                .equals(other.advanceEmi, advanceEmi) &&
            const DeepCollectionEquality()
                .equals(other.annIntRate, annIntRate) &&
            const DeepCollectionEquality()
                .equals(other.docCharges, docCharges) &&
            const DeepCollectionEquality()
                .equals(other.processCharges, processCharges) &&
            const DeepCollectionEquality()
                .equals(other.eSignDocumentId, eSignDocumentId) &&
            const DeepCollectionEquality().equals(other.eSignUrl, eSignUrl) &&
            const DeepCollectionEquality()
                .equals(other.eSignStatus, eSignStatus) &&
            const DeepCollectionEquality()
                .equals(other.eMandateId, eMandateId) &&
            const DeepCollectionEquality()
                .equals(other.eMandateUrl, eMandateUrl) &&
            const DeepCollectionEquality()
                .equals(other.eMandateStage, eMandateStage) &&
            const DeepCollectionEquality()
                .equals(other.eMandateStatus, eMandateStatus) &&
            const DeepCollectionEquality()
                .equals(other.bankDecision, bankDecision) &&
            const DeepCollectionEquality()
                .equals(other.cibilDecision, cibilDecision) &&
            const DeepCollectionEquality()
                .equals(other.finalDecision, finalDecision) &&
            const DeepCollectionEquality()
                .equals(other.isPreApproved, isPreApproved) &&
            const DeepCollectionEquality()
                .equals(other.isDisbursed, isDisbursed) &&
            const DeepCollectionEquality()
                .equals(other.isRejected, isRejected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(customerName),
        const DeepCollectionEquality().hash(poiNumber),
        const DeepCollectionEquality().hash(preEnquiryNumber),
        const DeepCollectionEquality().hash(dob),
        const DeepCollectionEquality().hash(mobileNumber),
        const DeepCollectionEquality().hash(pan),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(vKycRefId),
        const DeepCollectionEquality().hash(maritalStatus),
        const DeepCollectionEquality().hash(occupationType),
        const DeepCollectionEquality().hash(residenceType),
        const DeepCollectionEquality().hash(altMobileNumber),
        const DeepCollectionEquality().hash(fatherName),
        const DeepCollectionEquality().hash(motherName),
        const DeepCollectionEquality().hash(employerName),
        const DeepCollectionEquality().hash(officePhoneNumber),
        const DeepCollectionEquality().hash(emailId),
        const DeepCollectionEquality().hash(officialEmail),
        const DeepCollectionEquality().hash(designation),
        const DeepCollectionEquality().hash(annualIncome),
        const DeepCollectionEquality().hash(appLoanStatus),
        const DeepCollectionEquality().hash(emiPlanId),
        const DeepCollectionEquality().hash(emiPlanName),
        const DeepCollectionEquality().hash(loanAmount),
        const DeepCollectionEquality().hash(cibilLimit),
        const DeepCollectionEquality().hash(emiAmount),
        const DeepCollectionEquality().hash(minDownPayment),
        const DeepCollectionEquality().hash(downPaymentCollected),
        const DeepCollectionEquality().hash(advanceEmi),
        const DeepCollectionEquality().hash(annIntRate),
        const DeepCollectionEquality().hash(docCharges),
        const DeepCollectionEquality().hash(processCharges),
        const DeepCollectionEquality().hash(eSignDocumentId),
        const DeepCollectionEquality().hash(eSignUrl),
        const DeepCollectionEquality().hash(eSignStatus),
        const DeepCollectionEquality().hash(eMandateId),
        const DeepCollectionEquality().hash(eMandateUrl),
        const DeepCollectionEquality().hash(eMandateStage),
        const DeepCollectionEquality().hash(eMandateStatus),
        const DeepCollectionEquality().hash(bankDecision),
        const DeepCollectionEquality().hash(cibilDecision),
        const DeepCollectionEquality().hash(finalDecision),
        const DeepCollectionEquality().hash(isPreApproved),
        const DeepCollectionEquality().hash(isDisbursed),
        const DeepCollectionEquality().hash(isRejected)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_PreEnquiryFormDtoCopyWith<_$_PreEnquiryFormDto> get copyWith =>
      __$$_PreEnquiryFormDtoCopyWithImpl<_$_PreEnquiryFormDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreEnquiryFormDtoToJson(
      this,
    );
  }
}

abstract class _PreEnquiryFormDto extends PreEnquiryFormDto {
  const factory _PreEnquiryFormDto(
      {required final String id,
      @JsonKey(name: 'customername')
          required final String customerName,
      @JsonKey(name: 'prooftypenumber')
          final String? poiNumber,
      @JsonKey(name: 'loanno')
          required final String preEnquiryNumber,
      @JsonKey(name: 'dateofbirth')
          final String? dob,
      @JsonKey(name: 'mobilenumber')
          final String? mobileNumber,
      @JsonKey(name: 'panno')
          final String? pan,
      final String? gender,
      @JsonKey(name: 'vkycrefno')
          final String? vKycRefId,
      @JsonKey(name: 'maritalstatus')
          final String? maritalStatus,
      @JsonKey(name: 'occupationtype')
          final String? occupationType,
      @JsonKey(name: 'residentialstatus')
          final String? residenceType,
      @JsonKey(name: 'alternatenumber')
          final String? altMobileNumber,
      @JsonKey(name: 'fathername')
          final String? fatherName,
      @JsonKey(name: 'mothername')
          final String? motherName,
      @JsonKey(name: 'employername')
          final String? employerName,
      @JsonKey(name: 'officephonenumber')
          final int? officePhoneNumber,
      @JsonKey(name: 'emailid')
          final String? emailId,
      @JsonKey(name: 'officialEmail')
          final String? officialEmail,
      @JsonKey(name: 'designation')
          final String? designation,
      @JsonKey(name: 'annualincome')
          final double? annualIncome,
      @JsonKey(name: 'lDSApploanstatus')
          final String? appLoanStatus,
      @JsonKey(name: 'lDSAgent')
          final String? emiPlanId,
      @JsonKey(name: 'lDSAgent\$_identifier')
          final String? emiPlanName,
      @JsonKey(name: 'loanamount')
          final double? loanAmount,
      @JsonKey(name: 'cibillimit')
          final double? cibilLimit,
      @JsonKey(name: 'emiamount')
          final double? emiAmount,
      @JsonKey(name: 'mindownpayment')
          final double? minDownPayment,
      @JsonKey(name: 'downpaymentcollected')
          final double? downPaymentCollected,
      @JsonKey(name: 'advemi')
          final double? advanceEmi,
      @JsonKey(name: 'anuintrate')
          final double? annIntRate,
      @JsonKey(name: 'docchargesgst')
          final double? docCharges,
      @JsonKey(name: 'processchargegst')
          final double? processCharges,
      @JsonKey(name: 'esigndocumentid')
          final String? eSignDocumentId,
      @JsonKey(name: 'esignurl')
          final String? eSignUrl,
      @JsonKey(name: 'esignstatus')
          final String? eSignStatus,
      @JsonKey(name: 'mandateid')
          final String? eMandateId,
      @JsonKey(name: 'url')
          final String? eMandateUrl,
      @JsonKey(name: 'enachstage')
          final String? eMandateStage,
      @JsonKey(name: 'enachstatus')
          final String? eMandateStatus,
      @JsonKey(name: 'bankdecision')
          final String? bankDecision,
      @JsonKey(name: 'cibildecision')
          final String? cibilDecision,
      @JsonKey(name: 'finaldecision')
          final String? finalDecision,
      @JsonKey(name: 'loanpreapproved', defaultValue: false)
          required final bool isPreApproved,
      @JsonKey(name: 'loandisburse', defaultValue: false)
          required final bool isDisbursed,
      @JsonKey(name: 'loanrejected', defaultValue: false)
          required final bool isRejected}) = _$_PreEnquiryFormDto;
  const _PreEnquiryFormDto._() : super._();

  factory _PreEnquiryFormDto.fromJson(Map<String, dynamic> json) =
      _$_PreEnquiryFormDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'customername')
  String get customerName;
  @override
  @JsonKey(name: 'prooftypenumber')
  String? get poiNumber;
  @override
  @JsonKey(name: 'loanno')
  String get preEnquiryNumber;
  @override
  @JsonKey(name: 'dateofbirth')
  String? get dob;
  @override
  @JsonKey(name: 'mobilenumber')
  String? get mobileNumber;
  @override
  @JsonKey(name: 'panno')
  String? get pan;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'vkycrefno')
  String? get vKycRefId;
  @override
  @JsonKey(name: 'maritalstatus')
  String? get maritalStatus;
  @override
  @JsonKey(name: 'occupationtype')
  String? get occupationType;
  @override
  @JsonKey(name: 'residentialstatus')
  String? get residenceType;
  @override
  @JsonKey(name: 'alternatenumber')
  String? get altMobileNumber;
  @override
  @JsonKey(name: 'fathername')
  String? get fatherName;
  @override
  @JsonKey(name: 'mothername')
  String? get motherName;
  @override
  @JsonKey(name: 'employername')
  String? get employerName;
  @override
  @JsonKey(name: 'officephonenumber')
  int? get officePhoneNumber;
  @override
  @JsonKey(name: 'emailid')
  String? get emailId;
  @override
  @JsonKey(name: 'officialEmail')
  String? get officialEmail;
  @override
  @JsonKey(name: 'designation')
  String? get designation;
  @override
  @JsonKey(name: 'annualincome')
  double? get annualIncome;
  @override
  @JsonKey(name: 'lDSApploanstatus')
  String? get appLoanStatus;
  @override
  @JsonKey(name: 'lDSAgent')
  String? get emiPlanId;
  @override
  @JsonKey(name: 'lDSAgent\$_identifier')
  String? get emiPlanName;
  @override
  @JsonKey(name: 'loanamount')
  double? get loanAmount;
  @override
  @JsonKey(name: 'cibillimit')
  double? get cibilLimit;
  @override
  @JsonKey(name: 'emiamount')
  double? get emiAmount;
  @override
  @JsonKey(name: 'mindownpayment')
  double? get minDownPayment;
  @override
  @JsonKey(name: 'downpaymentcollected')
  double? get downPaymentCollected;
  @override
  @JsonKey(name: 'advemi')
  double? get advanceEmi;
  @override
  @JsonKey(name: 'anuintrate')
  double? get annIntRate;
  @override
  @JsonKey(name: 'docchargesgst')
  double? get docCharges;
  @override
  @JsonKey(name: 'processchargegst')
  double? get processCharges;
  @override
  @JsonKey(name: 'esigndocumentid')
  String? get eSignDocumentId;
  @override
  @JsonKey(name: 'esignurl')
  String? get eSignUrl;
  @override
  @JsonKey(name: 'esignstatus')
  String? get eSignStatus;
  @override
  @JsonKey(name: 'mandateid')
  String? get eMandateId;
  @override
  @JsonKey(name: 'url')
  String? get eMandateUrl;
  @override
  @JsonKey(name: 'enachstage')
  String? get eMandateStage;
  @override
  @JsonKey(name: 'enachstatus')
  String? get eMandateStatus;
  @override
  @JsonKey(name: 'bankdecision')
  String? get bankDecision;
  @override
  @JsonKey(name: 'cibildecision')
  String? get cibilDecision;
  @override
  @JsonKey(name: 'finaldecision')
  String? get finalDecision;
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
  @JsonKey(ignore: true)
  _$$_PreEnquiryFormDtoCopyWith<_$_PreEnquiryFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
