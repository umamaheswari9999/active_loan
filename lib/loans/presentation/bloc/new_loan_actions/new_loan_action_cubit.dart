
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../features/data/constants/constants.dart';
import '../../../../shared/failure.dart';
import '../../../../shared/logger.dart';
import '../../../domain/entity/customer.dart';
import '../../../domain/entity/customer_bank.dart';
import '../../../domain/entity/customer_mandate.dart';
import '../../../domain/entity/emi_plan.dart';
import '../../../domain/repo/loan_repo.dart';


part 'new_loan_action_cubit.freezed.dart';

part 'new_loan_action_state.dart';

@injectable
class NewLoanActionCubit extends Cubit<NewLoanActionState> {
  NewLoanActionCubit(this.repo) : super(const NewLoanActionState.initial());

  final LoanRepo repo;

  void checkIfLoanExists(String pan) async {
    var action = NewLoanAction.existingLoanCheck;
    try {
      emit(NewLoanActionState.loading(action));

      final result = await repo.checkIfLoanExists(pan);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(NewLoanActionState.success(action, data: {'data': r})),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not send kyc link');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void createBasicPreEnquiry(
    String pan,
    String? customerName,
    String? aadhaarNumber,
    DateTime? dob,
    String mobile,
    String? gender, {
    String? customerRefNo,
    Customer? customer,
  }) async {
    var action = NewLoanAction.createBasicPreEnquiry;
    try {
      emit(NewLoanActionState.loading(action));

      if (customerName == null || customerName.isEmpty) {
        emit(NewLoanActionState.failure(action,
            Failure.invalidFieldValue('Please enter valid customer name')));
      } else if (aadhaarNumber == null || aadhaarNumber.isEmpty) {
        emit(NewLoanActionState.failure(action,
            Failure.invalidFieldValue('Please enter valid aadhar number')));
      } else if (dob == null) {
        emit(NewLoanActionState.failure(
            action, Failure.invalidFieldValue('Please select date of birth')));
      } else if (gender == null || gender.isEmpty) {
        emit(NewLoanActionState.failure(
            action, Failure.invalidFieldValue('Please select gender')));
      } else {
        final result = await repo.createBasicPreEnquiry(
          pan,
          customerName,
          aadhaarNumber,
          dob,
          mobile,
          gender,
          customerRefNo: customerRefNo,
          customer: customer,
        );
        result.fold(
          (l) => emit(NewLoanActionState.failure(action, l)),
          (r) => emit(NewLoanActionState.success(action, data: {'loan': r})),
        );
      }
    } catch (e, st) {
      logError(e, st, '[bloc] could not create basic pre enquiry');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void checkLoanStatusAndSetStep(String loanNumber, String poiNumber) async {
    var action = NewLoanAction.stepDecider;
    try {
      emit(NewLoanActionState.loading(action));

      final result =
          await repo.fetchLoanAndClientMasterDetails(loanNumber, poiNumber);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(NewLoanActionState.success(action, data: {'data': r})),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not check loan status');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void sendConsentOtp(String preEnquiryId,
      [NewLoanAction action = NewLoanAction.kycConsentOtp]) async {
    try {
      emit(NewLoanActionState.loading(action));

      final result = await repo.sendConsentOtp(preEnquiryId);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'otp': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not send kyc link');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void resentOtp(String mobileNumber) async {
    sendConsentOtp(mobileNumber, NewLoanAction.resendOtp);
  }

  void verifyOtpAndFetchKycDetails(
      String preEnquiryId, String originalOtp, String enteredOtp) async {
    const action = NewLoanAction.verifyOtpAndDoKyc;
    try {
      emit(const NewLoanActionState.loading(action));

      if (originalOtp.isEmpty) {
        emit(NewLoanActionState.failure(
            action,
            Failure.invalidFieldValue(
                'Could not verify OTP. Original OTP is empty')));
      } else if (enteredOtp.isEmpty ||
          enteredOtp.length < 4 ||
          originalOtp.compareTo(enteredOtp) != 0) {
        emit(NewLoanActionState.failure(
            action, Failure.invalidFieldValue('Please enter valid OTP')));
      } else {
        final result =
            await repo.verifyConsentOtpAndDoKyc(preEnquiryId, enteredOtp);
        result.fold(
          (l) => emit(NewLoanActionState.failure(action, l)),
          (r) => emit(
            NewLoanActionState.success(action, data: {'data': r}),
          ),
        );
      }
    } catch (e, st) {
      logError(e, st, '[bloc] could not verify otp and complete the kyc');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void completeKycReview(String loanId, Customer customer,
      String permanentAddress, String currentAddress) async {
    const action = NewLoanAction.completeKycReview;
    try {
      emit(const NewLoanActionState.loading(action));

      final result = await repo.completeKycReview(
          loanId, customer, permanentAddress, currentAddress);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not send kyc link');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void completeAdditionalDetails(
    String loanId, {
    String? gender,
    String? email,
    String? occupationType,
    String? maritalStatus,
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
  }) async {
    const action = NewLoanAction.completeAdditionalInformation;
    try {
      emit(const NewLoanActionState.loading(action));

      if (email == null || email.isEmpty == true) {
        emit(NewLoanActionState.failure(action, Failure.invalidFieldValue('Please enter email')));
      } else {
        final result = await repo.completeAdditionalInformation(
          loanId,
          gender: gender,
          maritalStatus: maritalStatus,
          occupationType: occupationType,
          residenceType: residenceType,
          phoneNumber: phoneNumber,
          altPhoneNumber: altPhoneNumber,
          fatherName: fatherName,
          motherName: motherName,
          employeeName: employeeName,
          offPhoneNumber: offPhoneNumber,
          offEmailId: offEmailId,
          designation: designation,
          annualIncome: annualIncome,
          email: email,
        );
        result.fold(
              (l) => emit(NewLoanActionState.failure(action, l)),
              (r) => emit(
            NewLoanActionState.success(action, data: {'loan': r}),
          ),
        );
      }
    } catch (e, st) {
      logError(e, st, '[bloc] could update additional information');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void fetchBankDetailsByIfsc(String ifscCode) async {
    const action = NewLoanAction.fetchBankDetailsByIfsc;
    try {
      emit(const NewLoanActionState.loading(action));

      final result = await repo.fetchBankDetailsByIfsc(ifscCode);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'data': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could update additional information');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void addNewBank(String loanId, CustomerBank bank) async {
    const action = NewLoanAction.addNewBank;
    try {
      emit(const NewLoanActionState.loading(action));

      final result = await repo.addNewBank(loanId, bank);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'bank': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could update additional information');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void completeBankSelection(
      String loanId, CustomerBank bank, bool isPreApproved) async {
    const action = NewLoanAction.completeBankSelection;
    try {
      emit(const NewLoanActionState.loading(action));

      final result =
          await repo.completeBankSelection(loanId, bank, isPreApproved);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could update additional information');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void updateEmiDetails(String loanId, String amount, EmiPlan? emiPlan) async {
    const action = NewLoanAction.updateEmiDetails;
    try {
      emit(const NewLoanActionState.loading(action));

      final result =
          await repo.updateLoanAmountAndEmiDetails(loanId, amount, emiPlan);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could update emi information');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void checkCibilLimit(String loanId) async {
    const action = NewLoanAction.checkCibilLimit;
    try {
      emit(const NewLoanActionState.loading(action));

      final result = await repo.checkCibilLimit(loanId);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'limits': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not complete cibil limit check');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void completeLoanRequirements(String loanId, bool isPreApproved) async {
    const action = NewLoanAction.completeLoanDetails;
    try {
      emit(const NewLoanActionState.loading(action));

      final result = await repo.completeLoanRequirements(loanId, isPreApproved);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not complete loan requirements');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void resendESignLink(
      String enquiryId, String preEnquiryId, String eSignAction) {
    sendESignLink(
        enquiryId, preEnquiryId, eSignAction, NewLoanAction.resendESignLink);
  }

  void sendESignLink(
    String enquiryId,
    String preEnquiryId,
    String eSignAction, [
    NewLoanAction eventAction = NewLoanAction.sendSignLink,
  ]) async {
    var action = eSignAction == Constants.eSignActionResend
        ? NewLoanAction.resendESignLink
        : NewLoanAction.sendSignLink;
    try {
      emit(NewLoanActionState.loading(action));

      final result =
          await repo.sendESignLink(enquiryId, preEnquiryId, eSignAction);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not send e-sign link');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void sendEMandateLink(
      String enquiryId, String preEnquiryId, String eMandateAction) async {
    var action = eMandateAction == Constants.eSignActionResend
        ? NewLoanAction.resendEmandateLink
        : NewLoanAction.sendEMandateLink;
    try {
      emit(NewLoanActionState.loading(action));

      final result =
          await repo.sendEMandateLink(enquiryId, preEnquiryId, eMandateAction);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not send e-mandate link');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void completeESignAndEMandate(String enquiryId, String preEnquiryId) async {
    const action = NewLoanAction.completeESignAndEMandate;
    try {
      emit(const NewLoanActionState.loading(action));

      final result =
          await repo.completeESignAndEMandate(enquiryId, preEnquiryId);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not send e-mandate link');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }

  void updateMandateDetails(String enquiryId, CustomerMandate mandate) async {
    const action = NewLoanAction.updateMandateDetails;
    try {
      emit(const NewLoanActionState.loading(action));

      final result = await repo.updateMandateDetails(enquiryId, mandate);
      result.fold(
        (l) => emit(NewLoanActionState.failure(action, l)),
        (r) => emit(
          NewLoanActionState.success(action, data: {'loan': r}),
        ),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not update mandate details');
      emit(NewLoanActionState.failure(action, Failure.unknownFailure()));
    }
  }
}
