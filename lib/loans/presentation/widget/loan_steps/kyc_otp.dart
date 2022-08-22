import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../../di/injection.dart';
import '../../../../features/data/constants/constants.dart';
import '../../../../shared/context_utils.dart';
import '../../../../shared/model/app_static_data.dart';
import '../../../../shared/widget/loading_widget.dart';
import '../../../../shared/widget/primary_button.dart';
import '../../../domain/entity/customer.dart';
import '../../../domain/entity/pre_enquiry_form.dart';
import '../../bloc/new_loan/new_loan_cubit.dart';
import '../../bloc/new_loan_actions/new_loan_action.dart';
import '../../bloc/new_loan_actions/new_loan_action_cubit.dart';



class KycOtpWidget extends StatefulWidget {
  const KycOtpWidget({
    Key? key,
    required this.mobileNumber,
    required this.originalOtp,
  }) : super(key: key);

  final String mobileNumber;
  final String originalOtp;

  @override
  State<KycOtpWidget> createState() => _KycOtpWidgetState();
}

class _KycOtpWidgetState extends State<KycOtpWidget> {
  final OtpFieldController _controller = OtpFieldController();
  String? originalOtp;
  String enteredOtp = '';

  @override
  void initState() {
    super.initState();

    originalOtp = widget.originalOtp;
  }

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(12.0);
    const elevation = 0.0;

    return BlocListener<NewLoanActionCubit, NewLoanActionState>(
      listener: (ctx, state) {
        state.maybeWhen(
          success: (action, data) {
            if (action == NewLoanAction.resendOtp) {
              showSnackbar(context, 'OTP sent successfully');

              if (data != null) {
                setState(() {
                  originalOtp = data['otp'] as String;
                });
              }
            } else if (action == NewLoanAction.verifyOtpAndDoKyc) {
              if (data != null && data['data'] != null) {
                var details =
                    data['data'] as dartz.Tuple2<PreEnquiryForm, Customer>;
                final preEnquiry = details.value1;
                final customer = details.value2;

                BlocProvider.of<NewLoanCubit>(context)
                    .moveToNextStep(form: preEnquiry, customer: customer);
              }
            }
          },
          failure: (action, f) {
            var appStaticData = locator.get<AppStaticData>();
            showErrorDialog(context, '''We could not able to fetch the customer data.
            Request you to attach the customer related documents like PAN and Aadhaar from attachment icon at the top right corner to continue with the loan process.\n\nYou can contact support team at ${appStaticData.contactUsNumber}, ${appStaticData.contactUsEmail}''');
          },
          orElse: () {},
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('An OTP has been sent to ${widget.mobileNumber}.'),
          const SizedBox(height: 12),
          OTPTextField(
            controller: _controller,
            length: Constants.kycOtpLength,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.zero,
            fieldWidth: 40,
            style: const TextStyle(fontSize: 24),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            outlineBorderRadius: 8,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {},
            onChanged: (value) {
              enteredOtp = value;
            },
          ),
          const SizedBox(height: 6),
          TextButton(
            onPressed: () {
              _resendOtp(context);
            },
            child: const Text('Resend'),
          ),
          const SizedBox(height: 12),
          BlocBuilder<NewLoanActionCubit, NewLoanActionState>(
            builder: (ctx, state) {
              bool isLoading = state.maybeWhen(orElse: () => false, loading: (_) => true);

              return isLoading ? const LoadingWidget() : PrimaryButton(
                text: 'Verify OTP & Continue'.toUpperCase(),
                padding: padding,
                elevation: elevation,
                onPressed: () {
                  _verifyOtp(enteredOtp);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void _resendOtp(BuildContext context) {
    var form = BlocProvider.of<NewLoanCubit>(context).state.form;
    if (form != null) {
      BlocProvider.of<NewLoanActionCubit>(context)
          .sendConsentOtp(form.id);
    }
  }

  void _verifyOtp(String otp) {
    var form = BlocProvider.of<NewLoanCubit>(context).state.form;
    BlocProvider.of<NewLoanActionCubit>(context)
        .verifyOtpAndFetchKycDetails(form!.id, originalOtp!, otp);
  }
}
