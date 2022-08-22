
import 'package:active_loan/features/data/constants/constants.dart';
import 'package:active_loan/loans/domain/entity/loan_eligibility_limit.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action_cubit.dart';
import 'package:active_loan/shared/model/loan_eligibility.dart';
import 'package:active_loan/shared/widget/empty_list_widget.dart';
import 'package:active_loan/shared/widget/failure_widget.dart';
import 'package:active_loan/shared/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widget/primary_button.dart';

class LoanEligibilityCheckWidget extends StatelessWidget {
  const LoanEligibilityCheckWidget({
    Key? key,
    required this.loanId,
  }) : super(key: key);

  final String loanId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewLoanActionCubit, NewLoanActionState>(
      listener: (ctx, state) {
        state.maybeWhen(
          success: (action, data) {
            if (action == NewLoanAction.checkCibilLimit && data != null) {
              var limits = data['limits'] as LoanEligibilityLimit;

              if (limits.finalDecision == LoanEligibility.refer ||
                  limits.finalDecision == LoanEligibility.rejected) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (ctx) => AlertDialog(
                    title: CircleAvatar(
                      radius: 24,
                      backgroundColor: Theme.of(context).colorScheme.error,
                      child: const Icon(Icons.warning_amber_rounded),
                    ),
                    content: ListTile(
                      title: Text(
                        limits.finalDecision == LoanEligibility.rejected ? 'This consumer is not eligible for the loan. For more information contact' : 'For this loan please contact',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            Constants.defaultContactUs,
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            Constants.defaultContactUsEmail,
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          )
                        ],
                      ),
                    ),
                    actions: [
                      PrimaryButton(
                          text: 'OKAY',
                          onPressed: () => Navigator.of(context).pop())
                    ],
                  ),
                ).then((value) {
                  Navigator.of(context).pop(LoanEligibilityStatus.notEligible);
                });
              }
            }
          },
          orElse: () {},
        );
      },
      builder: (ctx, state) {
        return state.when(
          initial: () => const LoadingWidget(),
          loading: (action) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Please wait, checking loan eligibility...'),
              SizedBox(height: 6),
              LoadingWidget(),
            ],
          ),
          success: (action, data) {
            if (data != null) {
              var limits = data['limits'] as LoanEligibilityLimit;

              if (limits.finalDecision == LoanEligibility.eligible) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.info_outline),
                          title: Text('Loan Eligibility check completed successfully'),
                        ),
                        const SizedBox(height: 6),
                        PrimaryButton(
                          text: 'CONTINUE',
                          onPressed: () => Navigator.of(context)
                              .pop(true),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                    child: Text(
                        'Unfortunately, you are not eligible for the loan.'));
              }
            }
            return EmptyListWidget(
              message: 'No eligibility data found',
              onRefresh: () {
                BlocProvider.of<NewLoanActionCubit>(context)
                    .checkCibilLimit(loanId);
              },
            );
          },
          failure: (action, f) {
            if (action == NewLoanAction.checkCibilLimit) {
              return Center(
                child: FailureWidget(
                  failure: f,
                  onRefresh: () {
                    BlocProvider.of<NewLoanActionCubit>(context)
                        .checkCibilLimit(loanId);
                  },
                ),
              );
            }
            return const SizedBox(width: 0, height: 0);
          },
        );
      },
    );
  }
}
