import 'package:active_loan/auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:active_loan/auth/presentation/widget/otp_verify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../my_loans/presentation/screen/my_loans_screen.dart';
import '../widget/mobile_number_field.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  _SignInScreenState createState() => _SignInScreenState();
}
class _SignInScreenState extends State<SignInScreen> {
  String? number;
  @override
  void initState() {
    // checkLogin();
    super.initState();
  }
  // void checkLogin() async
  // {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   bool? login = preferences.getBool("login");
  //   if (login == true) {
  //     bool? user = preferences.getBool("aduserCheckStatus");
  //     if (user == true)
  //     {
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MyLoansScreen()));
  //     }
  //     else
  //       {
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
  //           BlocProvider(create: (context) => locator.get<KycVerifyBloc>(),
  //                 child: const KycverifyScreen())));}
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ),
        elevation: 0,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInStateFailure) {
            state.failure.maybeWhen(
              unAuthorized: () {
                _showError('Invalid username/password', context);
              },
              noInternet: () {
                _showError('Please check your internet', context);
              },
              unknownFailure: () {
                _showError('Please Sign Up', context);
              },
              orElse: () {
                _showError('Please Sign Up', context);
              },
            );
          }
        },
        builder: (context, state) {
          if (state is SignInStateLoading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is SignInStateSuccess) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: SafeArea(
                      child: Image.asset('assets/images/ezfinanz_logo_new.png', width: 200, height: 100,),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: const EdgeInsets.all(24.0),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withAlpha(60),
                              ])),
                      child: SingleChildScrollView(
                        child: _OtpbuildBody(),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: SafeArea(
                  child: Image.asset(
                    'assets/images/ezfinanz_logo_new.png',
                    width: 200,
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
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
                  child: SingleChildScrollView(
                    child: _MobilebuildBody(),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _MobilebuildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MobileNumberWidget(
          sendNumber: (String num) {
            number = num;
          },
        ),
      ],
    );
  }


  Widget _OtpbuildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        OtpVerifyWidget(mobileNo: number!),
      ],
    );
  }
}

void _showError(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
        ),
      ),
      elevation: 16.0,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(16.0),
    ),
  );
}
