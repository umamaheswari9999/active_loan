import 'package:dartz/dartz.dart' as dartz;
import 'package:active_loan/loans/presentation/widget/emi_plans_widget.dart';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/injection.dart';
import '../../../../features/data/constants/constants.dart';
import '../../../../shared/context_utils.dart';
import '../../../../shared/model/app_static_data.dart';
import '../../../../shared/widget/primary_button.dart';
import '../../../domain/entity/emi_plan.dart';
import '../../../domain/entity/pre_enquiry_form.dart';
import '../../bloc/emi_plans/emi_plans_cubit.dart';
import '../../bloc/new_loan/new_loan_cubit.dart';
import '../../bloc/new_loan_actions/new_loan_action.dart';
import '../../bloc/new_loan_actions/new_loan_action_cubit.dart';
import '../loan_eligibility_check_widget.dart';

class LoanDetailsStep extends StatefulWidget {
  const LoanDetailsStep({Key? key}) : super(key: key);

  @override
  State<LoanDetailsStep> createState() => _LoanDetailsStepState();
}

class _LoanDetailsStepState extends State<LoanDetailsStep> {
  final TextEditingController _amountController = TextEditingController();
  EmiPlan? _emiPlan;
  late AppStaticData appStaticData;

  @override
  void initState() {
    super.initState();
    appStaticData = locator.get<AppStaticData>();
    final enquiryForm = BlocProvider.of<NewLoanCubit>(context).state.form;

    if (enquiryForm != null && enquiryForm.loanAmount != null) {
      _amountController.text = double.parse(enquiryForm.loanAmount.toString())
          .toStringAsFixed(0)
          .toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewLoanActionCubit, NewLoanActionState>(
      listener: (ctx, state) {
        state.maybeWhen(
          success: (action, data) {
            if (action == NewLoanAction.updateEmiDetails) {
              if (data != null && data['loan'] != null) {
                var data2 = data['loan'] as PreEnquiryForm;
                BlocProvider.of<NewLoanCubit>(context).setLoanDetails(data2);
              }
            }
          },
          orElse: () {},
        );
      },
      child: BlocConsumer<NewLoanCubit, NewLoanState>(
        listener: (ctx, state) {
          // var regularLimit = state.form!.regularLimit;
          // var loanAmount = state.form!.loanAmount;
          //
          // if (loanAmount != null && regularLimit != null && loanAmount > regularLimit) {
          //   showErrorDialog(context, 'You are eligible amount is less than the required loan amount. If you want to increase your limit try uploading a bank statement');
          // }
        },
        builder: (ctx, state) {
          final form = state.form!;
          var shouldDisableEdit = form.finalDecision?.isNotEmpty == true;
          var isEligible = form.cibilDecision == LoanEligibility.eligible && form.cibilLimit != null && form.loanAmount != null && form.cibilLimit! >= form.loanAmount!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 6),
              Text('AMOUNT', style: Theme.of(context).textTheme.caption),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      letterSpacing: 2.5,
                    ),
                readOnly: shouldDisableEdit,
                enabled: !shouldDisableEdit,
                onSubmitted: (value) {
                  var loanId = BlocProvider.of<NewLoanCubit>(context).state.form!.id;
                  _setEmiDetails(context, loanId);
                },
              ),
              const SizedBox(height: 8),
              BlocBuilder<NewLoanCubit, NewLoanState>(
                builder: (ctx, state) {
                  if (state.form!.emiPlanId == null) {
                    return OutlinedButton(
                      onPressed: () {
                        _openEmiPlansDialog(context);
                      },
                      child: const Text('ADD EMI PLAN'),
                    );
                  }

                  final enquiryForm =
                      BlocProvider.of<NewLoanCubit>(context).state.form!;

                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(enquiryForm.emiPlanName!),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: _buildValueWidget(
                                  enquiryForm.advanceEmi.toString(),
                                  'ADVANCE EMI'),
                            ),
                            Expanded(
                              child: _buildValueWidget(
                                  enquiryForm.annIntRate.toString(),
                                  'INTEREST RATE'),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: _buildValueWidget(
                                  enquiryForm.downPaymentCollected.toString(),
                                  'DOWN PAYMENT'),
                            ),
                            Expanded(
                              child: _buildValueWidget(
                                  enquiryForm.emiAmount.toString(),
                                  'EMI AMOUNT'),
                            )
                          ],
                        ),
                      ],
                    ),
                    trailing: shouldDisableEdit ? null : IconButton(
                      onPressed: () => _openEmiPlansDialog(context),
                      icon: const Icon(FeatherIcons.edit),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              if (form.cibilDecision == LoanEligibility.refer ||
                  form.cibilDecision == LoanEligibility.rejected)
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 2,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12.0),
                    leading: Icon(form.cibilDecision == LoanEligibility.refer ? Icons.access_time : Icons.cancel_outlined, color: form.cibilDecision == LoanEligibility.refer ? Colors.orange :Colors.red),
                    title: Text(
                      form.cibilDecision == LoanEligibility.refer
                          ? 'Waiting for approval from the Ezfinanz Team'
                          : 'This loan has been rejected. Please contact operations team at',
                    ),
                    subtitle: form.cibilDecision == LoanEligibility.rejected ? Text('${appStaticData.contactUsNumber}, ${appStaticData.contactUsEmail}') : null,
                  ),
                ),
              if (isEligible)
                const Card(
                  margin: EdgeInsets.zero,
                  elevation: 2,
                  child: ListTile(
                    minLeadingWidth: 0,
                    contentPadding: EdgeInsets.all(12.0),
                    leading: Icon(Icons.verified, color: Colors.green),
                    title:
                        Text('Congratulations!!!! This loan has been pre approved'),
                  ),
                ),
              const SizedBox(height: 16),
              BlocConsumer<NewLoanActionCubit, NewLoanActionState>(
                listener: (ctx, state) {
                  state.maybeWhen(
                    success: (action, data) {
                      if (action == NewLoanAction.completeLoanDetails) {
                        if (data != null && data['loan'] != null) {
                          var data2 = data['loan'] as PreEnquiryForm;
                          BlocProvider.of<NewLoanCubit>(context)
                              .moveToNextStep(form: data2);
                        }
                      }
                    },
                    failure: (action, f) {
                      if (action == NewLoanAction.completeLoanDetails) {
                        f.maybeWhen(
                          serverFailure: (code, message) {
                            showSnackbar(context, message);
                          },
                          orElse: () {
                            showSnackbar(context,
                                'Could not complete loan details step');
                          },
                        );
                      }
                    },
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
                      child:
                          CircularProgressIndicator.adaptive(strokeWidth: 2.0),
                    );
                  }

                  return PrimaryButton(
                    text: form.cibilDecision ==
                        LoanEligibility.refer ? 'VERIFY' : 'CONTINUE',
                    elevation: 0.0,
                    padding: const EdgeInsets.all(12.0),
                    onPressed: form.cibilDecision == LoanEligibility.rejected
                        ? null
                        : () {
                            if (isEligible) {
                              BlocProvider.of<NewLoanActionCubit>(context)
                                  .completeLoanRequirements(form.id, form.isPreApproved);
                            } else if (form.cibilDecision == null ||
                                form.cibilDecision?.isEmpty == true) {
                              if (double.tryParse(_amountController.text) ==
                                  null) {
                                showSnackbar(
                                    context, 'Please enter valid amount');
                              } else {
                                _checkLoanEligibility(context);
                              }
                            } else if (form.cibilDecision == LoanEligibility.refer) {
                              var preEnquiryForm = BlocProvider.of<NewLoanCubit>(context).state.form!;
                              BlocProvider.of<NewLoanCubit>(context).refreshFormAndCustomer(preEnquiryForm.preEnquiryNumber, preEnquiryForm.pan!);
                            } else {
                              showSnackbar(context, 'Could not find supported loan eligibility');
                            }
                          },
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void _checkLoanEligibility(BuildContext context) {
    var form = BlocProvider.of<NewLoanCubit>(context).state.form!;

    showModalBottomSheet(
      context: context,
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 150),
      builder: (ctx) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(
                value: BlocProvider.of<NewLoanActionCubit>(context)
                  ..checkCibilLimit(form.id))
          ],
          child: LoanEligibilityCheckWidget(loanId: form.id),
        );
      },
    ).then((value) {
        BlocProvider.of<NewLoanCubit>(context).refreshFormAndCustomer(form.preEnquiryNumber, form.poiNumber ?? '');
    });
  }

  void _openEmiPlansDialog(BuildContext context) {
    showModalBottomSheet<EmiPlan>(
      context: context,
      builder: (ctx) {
        return BlocProvider(
          create: (ctx) => locator.get<EmiPlansCubit>()..fetchInitial(),
          child: const EmiPlansWidget(),
        );
      },
    ).then((plan) {
      if (plan != null) {
        setState(() {
          _emiPlan = plan;
          if (_amountController.text.isNotEmpty) {
            var loanId = BlocProvider.of<NewLoanCubit>(context).state.form!.id;
            _setEmiDetails(context, loanId);
          }
        });
      }
    });
  }

  void _setEmiDetails(BuildContext context, String loanId) {
    BlocProvider.of<NewLoanActionCubit>(context).updateEmiDetails(
      loanId,
      _amountController.text,
      _emiPlan,
    );
  }

  Widget _buildValueWidget(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(double.parse(title).toStringAsFixed(0).toString(),
            style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 2),
        Text(subtitle, style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}
