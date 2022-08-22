import 'package:active_loan/features/my_loans_inf/presentation/bloc/my_loans_inf_bloc.dart';
import 'package:active_loan/my_loans/presentation/bloc/my_loans_bloc.dart';
import 'package:active_loan/my_loans/presentation/bloc/my_loans_event.dart';
import 'package:active_loan/my_loans/presentation/screen/my_loans_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../di/injection.dart';
import '../../../shared/context_utils.dart';
import '../../../widgets/styles.dart';
import '../bloc/ad_user/ad_user_bloc.dart';
import '../bloc/otp_verification/otp_verification_bloc.dart';
import '../bloc/otp_verification/otp_verification_event.dart';
import '../bloc/otp_verification/otp_verification_state.dart';
import '../screen/checking_screen.dart';

class OtpVerifyWidget extends StatefulWidget {
  final String mobileNo;
  const OtpVerifyWidget({Key? key, required this.mobileNo}) : super(key: key);
  @override
  _OtpVerifyWidgetState createState() => _OtpVerifyWidgetState();
}

class _OtpVerifyWidgetState extends State<OtpVerifyWidget> {
  TextEditingController OTPController1 = TextEditingController();
  TextEditingController OTPController2 = TextEditingController();
  TextEditingController OTPController3 = TextEditingController();
  TextEditingController OTPController4 = TextEditingController();
  TextEditingController OTPController5 = TextEditingController();
  TextEditingController OTPController6 = TextEditingController();
  String verify = "";
  bool showOtpfield = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyBloc, VerifyState>(
      listener: (context, state) {
        if (state is VerifyStateSuccess) {
          if (state.verifyStatus) {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(
            //         builder: (context) => BlocProvider<UserCheckBloc>(
            //               create: (context) => locator.get<UserCheckBloc>(),
            //               child: CheckUser(
            //                   mobileController: widget.mobileNo,
            //                   otpController: verify),
            //             )))
            //     .then((value) {
            //   if (value == true) {
            //     Navigator.of(context).pop(true);
            //   }
            // });
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>  MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => locator.get<MyLoansInfBloc>(),
                    ),
                    BlocProvider(
                      create: (context) =>
                      locator.get<MyLoansBloc>()..add(FetchMyloansEvent()),
                    ),
                  ],
                  child: MyLoansScreen(),
                )));
          } else {
            showErrorDialog(context, 'Invalid OTP');
          }
        }
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    Theme.of(context).colorScheme.primary.withAlpha(60),
                  ])),
          child: _OtpbuildBody(),
        );
      },
    );
  }

  Widget OTPtextSection(
      TextEditingController controller, BuildContext context) {
    return SizedBox(
      height: 50,
      width: 40,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }

  Widget OtpVerification() {
    var space = const SizedBox(
      width: 10,
    );
    return Column(children: [
      Row(
        children: [
          OTPtextSection(OTPController1, context),
          space,
          OTPtextSection(OTPController2, context),
          space,
          OTPtextSection(OTPController3, context),
          space,
          OTPtextSection(OTPController4, context),
          space,
          OTPtextSection(OTPController5, context),
          space,
          OTPtextSection(OTPController6, context),
        ],
      ),
      VerticalSpacing.small,
      VerticalSpacing.small,
      ElevatedButton(
        onPressed: () {
          verify = OTPController1.text +
              OTPController2.text +
              OTPController3.text +
              OTPController4.text +
              OTPController5.text +
              OTPController6.text;
          BlocProvider.of<VerifyBloc>(context)
              .add(OtpVerify(widget.mobileNo, verify,false,null,null));
        },
        child: Text("Verify otp".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white)),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text("Please enter mobile OTP ",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 15.0,
              fontWeight: FontWeight.normal),
          textAlign: TextAlign.center)
    ]);
  }

  Widget _OtpbuildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        OtpVerification(),
      ],
    );
  }
}
