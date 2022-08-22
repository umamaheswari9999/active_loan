
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action.dart';
import 'package:active_loan/loans/presentation/widget/loan_steps/kyc_otp.dart';
import 'package:active_loan/shared/context_utils.dart';
import 'package:active_loan/shared/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../features/data/constants/constants.dart';
import '../../bloc/new_loan/new_loan_cubit.dart';
import '../../bloc/new_loan_actions/new_loan_action_cubit.dart';


class KycStepWidget extends StatefulWidget {
  const KycStepWidget({Key? key}) : super(key: key);

  @override
  State<KycStepWidget> createState() => _KycStepWidgetState();
}

class _KycStepWidgetState extends State<KycStepWidget> {
  static const int initial = 0;
  static const int kycLinkSentToCustomer = 1;
  static const int otpSentToCustomer = 2;
  int _screen = initial;
  static const padding = EdgeInsets.all(12.0);
  static const elevation = 0.0;
  late String mobileNumber;
  String? originalOtp;

  @override
  void initState() {
    super.initState();
    var form = BlocProvider.of<NewLoanCubit>(context).state.form;
    mobileNumber = form!.mobileNumber!;
    if (form.appLoanStatus == LoanStage.waitingForKyc) _screen = otpSentToCustomer;
  }

  void _sendKycConsentOtp() {
    var form = BlocProvider.of<NewLoanCubit>(context).state.form;
    if (form != null) {
      BlocProvider.of<NewLoanActionCubit>(context)
          .sendConsentOtp(form.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget _body;

    switch (_screen) {
      case otpSentToCustomer:
        _body = KycOtpWidget(mobileNumber: mobileNumber, originalOtp: originalOtp!);
        break;
      default:
        _body = _buildKycDecisionWidget(context, padding, elevation);
    }

    return MultiBlocListener(
      listeners: [
        BlocListener<NewLoanActionCubit, NewLoanActionState>(
          listener: (ctx, state) {
            state.maybeWhen(
              success: (action, data) {
                if (action == NewLoanAction.kycConsentOtp) {
                  showSnackbar(context, 'OTP Sent Successfully');

                  if (data != null) {
                    setState(() {
                      originalOtp = data['otp'] as String;
                      _screen = otpSentToCustomer;
                    });
                  }
                }
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: _body,
    );
  }

  Widget _buildKycDecisionWidget(
      BuildContext context, EdgeInsets padding, double elevation) {
    return BlocBuilder<NewLoanActionCubit, NewLoanActionState>(
      builder: (ctx, state) {
        bool isLoading = false;
        state.maybeWhen(
          loading: (action) {
            isLoading = true;
          },
          orElse: () {},
        );

        return AbsorbPointer(
          absorbing: isLoading,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'KYC is not completed for this customer. KYC is compulsory to disburse the loan. Do you want to proceed further?',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(),
              ),
              const SizedBox(height: 12),
              if (isLoading)
                const Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                ),
              if (!isLoading) ...[
                PrimaryButton(
                  text: 'START KYC',
                  padding: padding,
                  elevation: elevation,
                  onPressed: () {
                    _sendKycConsentOtp();
                  },
                ),
                const SizedBox(height: 6),
                PrimaryButton(
                  text: 'GO BACK',
                  padding: padding,
                  elevation: elevation,
                  primary: Theme.of(context).colorScheme.inversePrimary,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class KycCheckLoading extends StatelessWidget {
  const KycCheckLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 80,
            color: Colors.white,
          ),
          const SizedBox(height: 12),
          Container(
            height: 30,
            color: Colors.white,
          ),
          const SizedBox(height: 6),
          Container(
            height: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
