import 'package:active_loan/auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:active_loan/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../features/my_loans_inf/presentation/bloc/my_loans_inf_bloc.dart';
import '../../../my_loans/presentation/bloc/my_loans_bloc.dart';
import '../../../my_loans/presentation/bloc/my_loans_event.dart';
import '../../../my_loans/presentation/screen/my_loans_screen.dart';
import 'checking_screen.dart';
import '../bloc/ad_user/ad_user_bloc.dart';
import '../bloc/otp_verification/otp_verification_bloc.dart';
import '../bloc/otp_verification/otp_verification_event.dart';
import '../bloc/otp_verification/otp_verification_state.dart';
import '../../../utils/context_utils.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String mobilecontroller;
  final String userName;
  final String aadharNumber;
  OtpVerificationScreen(this.mobilecontroller, this.userName, this.aadharNumber);
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerificationScreen> {

  TextEditingController otpController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Account Verification",
            style: TextStyle(color: Colors.white)),
      ),
      body: BlocConsumer<VerifyBloc, VerifyState>(
        listener: (context, state) {
          print(state);
          if (state is VerifyStateSuccess) {
            if (state.verifyStatus) {
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
                  )))
                  .then((value) {
                if (value == true) {
                  Navigator.of(context).pop(true);
                }
              });
            } else {
              showErrorDialog("Invalid OTP", context);
            }
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Verifying your number!",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 4.0, right: 16.0),
                    child: Text(
                      "Please enter mobile OTP to verify your account",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: TextFormField(
                      controller: otpController,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          showErrorDialog('Enter valid number', context);
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(6),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'OTP',
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () {
                        print('HI');
                        BlocProvider.of<VerifyBloc>(context).add(OtpVerify(
                            widget.mobilecontroller, otpController.text,true,widget.aadharNumber,widget.userName));
                      },
                      child: const Text(
                        'Verify Otp',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
