import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:active_loan/features/kycVerificationndDetails/domain/simpleClass.dart';
import 'package:active_loan/loans/domain/entity/attachment.dart';
import 'package:active_loan/loans/domain/entity/bank_by_ifsc.dart';
import 'package:active_loan/loans/domain/entity/customer_mandate.dart';
import 'package:active_loan/loans/domain/entity/loan.dart';
import 'package:active_loan/loans/domain/entity/loan_eligibility_limit.dart';
import 'package:active_loan/loans/domain/entity/note.dart';
import 'package:active_loan/loans/domain/entity/pre_enquiry_form.dart';
import 'package:active_loan/loans/domain/entity/recent_loans.dart';
import 'package:active_loan/shared/failure.dart';
import '../entity/customer.dart';
import '../entity/customer_bank.dart';
import '../entity/emi_plan.dart';
import '../entity/loan_filters.dart';

abstract class LoanRepo {
  Future<Either<Failure, RecentLoans>> fetchRecentLoans();

  Future<Either<Failure, List<Note>>> fetchNotes(
      String recordId, int start, int end);

  Future<Either<Failure, Note>> insertNote(String recordId, String note);

  Future<Either<Failure, List<Loan>>> fetchLoans(
      LoanFilters filters, int start, int end);

  Future<Either<Failure, Tuple2<PreEnquiryForm?, Customer?>>> checkIfLoanExists(
      String panOrAadhaar);

  Future<Either<Failure, PreEnquiryForm?>> createBasicPreEnquiry(
    String pan,
    String customerName,
    String aadhaarNumber,
    DateTime dob,
    String mobile,
    String gender, {
    String? customerRefNo,
    Customer? customer,
  });

  Future<
          Either<Failure,
              Tuple2<Tuple2<PreEnquiryForm, PreEnquiryForm?>, Customer?>>>
      fetchLoanAndClientMasterDetails(String loanNumber, String poiNumber);

  Future<Either<Failure, bool>> checkIfKycDone(String customerId);

  Future<Either<Failure, bool>> sendKycLink(String mobileNumber);

  Future<Either<Failure, String>> sendConsentOtp(String preEnquiryId);

  Future<Either<Failure, Tuple2<PreEnquiryForm, Customer>>>
      verifyConsentOtpAndDoKyc(String preEnquiryId, String enteredOtp);

  Future<Either<Failure, bool>> addBankDetails();

  Future<Either<Failure, bool>> checkLoanEligibility(
      double amount, String loanTerms);

  Future<Either<Failure, Tuple2<PreEnquiryForm, PreEnquiryForm>>> sendESignLink(
      String enquiryId, String preEnquiryId, String action);

  Future<Either<Failure, Tuple2<PreEnquiryForm, PreEnquiryForm>>>
      sendEMandateLink(
          String enquiryId, String preEnquiryId, String eMandateAction);

  Future<Either<Failure, PreEnquiryForm>> completeKycReview(String loanId,
      Customer customer, String permanentAddress, String currentAddress);

  Future<Either<Failure, PreEnquiryForm>> completeAdditionalInformation(
    String loanId, {
    String? gender,
    String? email,
    String? maritalStatus,
    String? occupationType,
    String? residenceType,
    String? phoneNumber,
    String? altPhoneNumber,
    String? fatherName,
    String? motherName,
    String? employeeName,
    String? offPhoneNumber,
    String? offEmailId,
    String? designation,
    String? annualIncome,
  });

  Future<Either<Failure, CustomerBank>> addNewBank(
      String loanId, CustomerBank bank);

  Future<Either<Failure, List<Simple>>> fetchBanks(
      int start, int end, String? query);

  Future<Either<Failure, Tuple2<PreEnquiryForm, PreEnquiryForm>>>
      completeBankSelection(
          String loanId, CustomerBank bank, bool isPreApproved);

  Future<Either<Failure, List<EmiPlan>>> fetchEmiPlans(
      int start, int end, String? query);

  Future<Either<Failure, PreEnquiryForm>> updateLoanAmountAndEmiDetails(
      String loanId, String amount, EmiPlan? emiPlan);

  Future<Either<Failure, LoanEligibilityLimit>> checkCibilLimit(String loanId);

  Future<Either<Failure, PreEnquiryForm>> completeLoanRequirements(
      String loanId, bool isPreApproved);

  Future<Either<Failure, BankByIfsc>> fetchBankDetailsByIfsc(String ifscCode);

  Future<Either<Failure, PreEnquiryForm>> completeESignAndEMandate(
      String enquiryId, String preEnquiryId);

  Future<Either<Failure, PreEnquiryForm>> updateMandateDetails(
      String enquiryId, CustomerMandate mandate);

  Future<Either<Failure, Uint8List>> fetchAttachment(
      String recordId, String fileName, String entityName);

  Future<Either<Failure, List<Attachment>>> fetchLoanAttachments(String recordId);

  Future<Either<Failure, List<Simple>>> fetchAttachmentDocTypes();

  Future<Either<Failure, Attachment>> uploadFile(String recordId, Simple docType, File file);
}
