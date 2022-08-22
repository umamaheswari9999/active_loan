
import 'package:active_loan/loans/domain/entity/customer.dart';
import 'package:active_loan/loans/domain/entity/customer_bank.dart';
import 'package:active_loan/loans/domain/entity/pre_enquiry_form.dart';
import 'package:active_loan/loans/domain/repo/loan_repo.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_loan_cubit.freezed.dart';

part 'new_loan_state.dart';

@injectable
class NewLoanCubit extends Cubit<NewLoanState> {
  NewLoanCubit(this.repo)
      : super(
          const NewLoanState(
            currentStep: 0,
            isLoading: false,
            success: false,
          ),
        );

  final LoanRepo repo;

  void setLoanDetails(PreEnquiryForm form) {
    emit(state.copyWith(form: form));
  }

  void setEnquiryForm(PreEnquiryForm form) {
    emit(state.copyWith(enquiryForm: form));
  }

  void setCustomer(Customer? customer) {
    emit(state.copyWith(customer: customer));
  }

  void withCustomState(NewLoanState state) {
    emit(state);
  }

  void refreshFormAndCustomer(String loanNumber, String panNumber) async {
    var result =
        await repo.fetchLoanAndClientMasterDetails(loanNumber, panNumber);
    result.fold(
      (l) {},
      (r) {
        updateForms(
            form: r.value1.value1,
            enquiryForm: r.value1.value2 ?? state.enquiryForm);
        setCustomer(r.value2 ?? state.customer);
      },
    );
  }

  void addNewBank(CustomerBank bank) {
    var banks = [...state.customer!.banks];
    banks.add(bank);

    emit(state.copyWith(customer: state.customer!.copyWith(banks: banks)));
  }

  void onStepChanged(int newStep) {
    emit(state.copyWith(currentStep: newStep));
  }

  void updateForms({
    PreEnquiryForm? form,
    PreEnquiryForm? enquiryForm,
  }) {
    emit(
      state.copyWith(
        form: form ?? state.form,
        enquiryForm: enquiryForm ?? state.enquiryForm,
      ),
    );
  }

  void moveToNextStep({
    PreEnquiryForm? form,
    Customer? customer,
    PreEnquiryForm? enquiryForm,
  }) {
    emit(
      state.copyWith(
        currentStep: state.currentStep + 1,
        customer: customer ?? state.customer,
        form: form ?? state.form,
        enquiryForm: enquiryForm ?? state.enquiryForm,
      ),
    );
  }
}
