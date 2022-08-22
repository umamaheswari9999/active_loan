import 'package:dartz/dartz.dart' as dartz;
import 'package:active_loan/loans/presentation/bloc/bank_accounts/bank_accounts_cubit.dart';
import 'package:active_loan/loans/presentation/widget/new_bank_widget.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/injection.dart';
import '../../../../shared/context_utils.dart';
import '../../../../shared/styles.dart';
import '../../../../shared/widget/primary_button.dart';
import '../../../domain/entity/customer_bank.dart';
import '../../../domain/entity/pre_enquiry_form.dart';
import '../../bloc/new_loan/new_loan_cubit.dart';
import '../../bloc/new_loan_actions/new_loan_action.dart';
import '../../bloc/new_loan_actions/new_loan_action_cubit.dart';

class BankDetailsStepWidget extends StatefulWidget {
  const BankDetailsStepWidget({Key? key}) : super(key: key);

  @override
  State<BankDetailsStepWidget> createState() => _BankDetailsStepWidgetState();
}

class _BankDetailsStepWidgetState extends State<BankDetailsStepWidget> {
  CustomerBank? _account;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewLoanCubit, NewLoanState>(
      builder: (ctx, state) {
        var customer = state.customer;

        if (customer == null) {
          return const Text('Please complete previous step to continue');
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (customer.banks.isEmpty)
              ListTile(
                leading: const Icon(FeatherIcons.alertTriangle),
                shape:  const RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.lightGrey),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                tileColor: Theme.of(context).colorScheme.secondary,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                title: const Text(
                  'No bank accounts are attached to this customer. Please add bank to continue.',
                ),
              ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: customer.banks.length,
              separatorBuilder: (ctx, idx) => const Divider(indent: 16),
              itemBuilder: (ctx, idx) {
                final bank = customer.banks[idx];
                final isValid = bank.isValidated && bank.nameOnBankAccount.isNotEmpty && bank.validatedBy != null;

                return RadioListTile<CustomerBank>(
                  value: bank,
                  groupValue: _account,
                  onChanged: isValid ? (bank) {
                    setState(() {
                      _account = bank;
                    });
                  } : null,
                  title: Text(bank.accountNumber),
                  subtitle: Text(bank.bankName),
                  secondary: isValid
                      ? const Icon(Icons.verified, color: Colors.green)
                      : IconButton(
                        onPressed: () {
                          _editOrAddBank(context, bank);
                        },
                        icon: const Icon(Icons.edit, color: Colors.orange),
                      ),
                );
              },
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () {
                _editOrAddBank(context);
              },
              label: Text('Add Bank Account'.toUpperCase()),
              icon: const Icon(Icons.add),
            ),
            const SizedBox(height: 16),
            BlocConsumer<NewLoanActionCubit, NewLoanActionState>(
              listener: (ctx, state) {
                state.maybeWhen(
                  success: (action, data) {
                    if (action == NewLoanAction.completeBankSelection) {
                      if (data != null && data['loan'] != null) {
                        var data2 = data['loan']
                            as dartz.Tuple2<PreEnquiryForm, PreEnquiryForm>;
                        BlocProvider.of<NewLoanCubit>(context).moveToNextStep(
                            form: data2.value1, enquiryForm: data2.value2);
                      }
                    }
                  },
                  failure: (action, f) {},
                  orElse: () {},
                );
              },
              builder: (ctx, state) {
                bool isLoading = false;
                state.maybeWhen(
                  orElse: () {},
                  loading: (action) => isLoading = true,
                );

                if (isLoading) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(strokeWidth: 2.0),
                  );
                }

                return PrimaryButton(
                  text: 'Continue'.toUpperCase(),
                  elevation: 0.0,
                  padding: const EdgeInsets.all(12.0),
                  onPressed: () {
                    if (_account == null) {
                      showSnackbar(context, 'Please select bank account');
                    } else {
                      var preEnquiryForm =
                          BlocProvider.of<NewLoanCubit>(context).state.form;
                      var loanId = preEnquiryForm!.id;
                      BlocProvider.of<NewLoanActionCubit>(context)
                          .completeBankSelection(
                              loanId, _account!, preEnquiryForm.isPreApproved);
                    }
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _editOrAddBank(BuildContext context, [CustomerBank? bank]) {
    Navigator.of(context)
        .push<CustomerBank>(MaterialPageRoute(builder: (ctx) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (ctx) =>
                  locator.get<BankAccountsCubit>()..fetchInitial()),
        ],
        child: BlocProvider.value(
          value: BlocProvider.of<NewLoanActionCubit>(context),
          child: NewBankWidget(
              loanId: BlocProvider.of<NewLoanCubit>(context)
                  .state
                  .form!
                  .id,
            bank: bank,
          ),
        ),
      );
    })).then((newBank) {
      var newLoanState =
          BlocProvider.of<NewLoanCubit>(context).state;
      BlocProvider.of<NewLoanCubit>(context).refreshFormAndCustomer(
          newLoanState.form!.preEnquiryNumber,
          newLoanState.form!.pan!);
    });
  }
}
