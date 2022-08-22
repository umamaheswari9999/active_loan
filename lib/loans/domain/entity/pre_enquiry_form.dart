import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_enquiry_form.freezed.dart';

@freezed
class PreEnquiryForm with _$PreEnquiryForm {
  const factory PreEnquiryForm({
    required String id,
    required String customerName,
    String? poiNumber,
    required String preEnquiryNumber,
    String? dob,
    String? mobileNumber,
    String? pan,
    String? gender,
    String? vKycRefId,
    String? maritalStatus,
    String? occupationType,
    String? residenceType,
    String? altMobileNumber,
    String? fatherName,
    String? motherName,
    String? employerName,
    int? officePhoneNumber,
    String? email,
    String? officialEmail,
    String? designation,
    double? annualIncome,
    double? loanAmount,
    String? emiPlanId,
    String? emiPlanName,
    double? emiAmount,
    double? minDownPayment,
    double? downPaymentCollected,
    double? advanceEmi,
    double? annIntRate,
    double? docCharges,
    double? processCharges,
    String? appLoanStatus,
    String? eSignDocumentId,
    String? eSignUrl,
    String? eSignStatus,
    String? eMandateId,
    String? eMandateUrl,
    String? eMandateStage,
    String? eMandateStatus,
    String? bankDecision,
    String? cibilDecision,
    String? finalDecision,
    required bool isPreApproved,
    required bool isDisbursed,
    required bool isRejected,
    double? cibilLimit,
  }) = _PreEnquiryForm;
}