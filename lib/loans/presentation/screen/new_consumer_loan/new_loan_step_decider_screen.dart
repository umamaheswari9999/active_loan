import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:active_loan/di/injection.dart';
import 'package:active_loan/loans/domain/entity/pre_enquiry_form.dart';
import 'package:active_loan/loans/presentation/bloc/bank_accounts/bank_accounts_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/download_attachment/download_attachment_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/emi_plans/emi_plans_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/kyc_check/kyc_check_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan/new_loan_cubit.dart';
import 'package:active_loan/loans/presentation/screen/new_consumer_loan/consumer_loan_steps_screen.dart';
import 'package:active_loan/shared/widget/failure_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/data/constants/constants.dart';
import '../../../../shared/context_utils.dart';
import '../../../domain/entity/customer.dart';
import '../../bloc/new_loan_actions/new_loan_action.dart';
import '../../bloc/new_loan_actions/new_loan_action_cubit.dart';

class NewLoanStepDeciderScreen extends StatelessWidget {
  final String poiNumber;
  final String loanNumber;

  static const kycStep = 0;
  static const reviewKycStep = 1;
  static const additionalDetailsStep = 2;
  static const loanRequirementsStep = 3;
  static const bankDetailsStep = 4;
  static const eSignAndeMandateStep = 5;
  static const preApprovalStep = 6;

  const NewLoanStepDeciderScreen({
    Key? key,
    required this.poiNumber,
    required this.loanNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<NewLoanActionCubit, NewLoanActionState>(
          listener: (ctx, state) {
            state.maybeWhen(
              success: (action, data) {
                if (action == NewLoanAction.stepDecider) {
                  if (data != null && data['data'] != null) {
                    var details = data['data'] as Tuple2<
                        Tuple2<PreEnquiryForm, PreEnquiryForm?>, Customer?>;
                    final preEnquiry = details.value1.value1;
                    final enquiry = details.value1.value2;
                    final customer = details.value2;

                    int step = kycStep;
                    String loanStatus =
                        preEnquiry.appLoanStatus ?? LoanStage.draft;

                    if (loanStatus == LoanStage.draft && customer == null) {
                      step = kycStep;
                    } else if (loanStatus == LoanStage.draft &&
                        customer != null) {
                      step = reviewKycStep;
                    } else if (loanStatus == LoanStage.waitingForKyc) {
                      step = kycStep;
                    } else if (loanStatus == LoanStage.reviewKyc) {
                      step = reviewKycStep;
                    } else if (loanStatus == LoanStage.additionalInfo) {
                      step = additionalDetailsStep;
                    } else if (loanStatus == LoanStage.bankDetails) {
                      step = bankDetailsStep;
                    } else if (loanStatus == LoanStage.loanRequirements) {
                      step = loanRequirementsStep;
                    } else if (['IES', 'WES', 'RES', 'IEM', 'WEM', 'REM']
                        .contains(loanStatus)) {
                      step = eSignAndeMandateStep;
                    } else if (loanStatus == LoanStage.waitingForPreApproval || loanStatus == LoanStage.preApproved || loanStatus == LoanStage.waitingForCallVerification ||
                    loanStatus == LoanStage.waitingForDisbursement) {
                      step = preApprovalStep;
                    } else {
                      showSnackbar(
                          context, 'Could not find correct stage for the loan');
                    }

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => MultiBlocProvider(
                          providers: [
                            BlocProvider(
                                create: (ctx2) => locator.get<KycCheckCubit>()),
                            BlocProvider(
                              create: (ctx2) => locator.get<NewLoanCubit>()
                                ..withCustomState(
                                  NewLoanState(
                                    currentStep: step,
                                    isLoading: false,
                                    success: false,
                                    customer: customer,
                                    form: preEnquiry,
                                    enquiryForm: enquiry,
                                  ),
                                ),
                            ),
                            BlocProvider(
                                create: (ctx2) =>
                                    locator.get<NewLoanActionCubit>()),
                            BlocProvider(
                                create: (ctx2) =>
                                    locator.get<DownloadAttachmentCubit>()),
                            if (step == bankDetailsStep)
                              BlocProvider(
                                  create: (ctx2) =>
                                      locator.get<BankAccountsCubit>()
                                        ..fetchInitial()),
                            if (step == loanRequirementsStep)
                              BlocProvider(
                                  create: (ctx2) => locator.get<EmiPlansCubit>()
                                    ..fetchInitial()),
                          ],
                          child: const ConsumerLoanStepsScreen(),
                        ),
                      ),
                    ).then((value) {
                      Navigator.of(context).pop();
                    });
                  }
                }
              },
              orElse: () {},
            );
          },
          builder: (ctx, state) {
            return state.when(
              initial: () => const CircularProgressIndicator(),
              loading: (action) => const CircularProgressIndicator(),
              success: (action, _) => const SizedBox(height: 0, width: 0),
              failure: (_, f) => FailureWidget(
                failure: f,
                onRefresh: () {
                  BlocProvider.of<NewLoanActionCubit>(context)
                      .checkLoanStatusAndSetStep(loanNumber, poiNumber);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
