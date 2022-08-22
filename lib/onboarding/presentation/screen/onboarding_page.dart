import 'package:active_loan/auth/presentation/bloc/otp_verification/otp_verification_bloc.dart';
import 'package:active_loan/auth/presentation/screen/signIn_screen.dart';
import 'package:active_loan/features/homeScreen/presentation/homeconstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import '../../../di/injection.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  void initState() {
    checkLogin();
    super.initState();
  }

  void checkLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? login = preferences.getBool("login");
    if (login == true) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const HomePageInt()));
    }
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          dotsContainerDecorator: const BoxDecoration(color: Colors.white),

          showNextButton: false,
          pages: [
            PageViewModel(
              title: 'Offer Customers 0% Furniture Loans'
                  ' and do not miss out on Lost sales.',
              body: '',
              image: buildImage('assets/images/loans5.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Offer Customers 0% \n'
                  'Medical Loans',
              body: '',
              image: buildImage('assets/images/loan3.webp'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title:
                  'Offer Customers 0% \n Wellness Loans and do \n not miss out on \n lost sales',
              body: '',
              image: buildImage('assets/images/loan2.webp'),
              decoration: getPageDecoration(),
            ),
          ],
          done: const Text('Login',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.lightBlueAccent)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: const Align(
            alignment: Alignment.bottomLeft,
            child: Text('Skip',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlueAccent)),
          ),
          onSkip: () => goToHome(context),
          // next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          dotsFlex: 0,
          nextFlex: 0,
          animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (_) => MultiBlocProvider(providers: [
                  BlocProvider<SignInBloc>(
                      create: (context) => locator.get<SignInBloc>()),
                  BlocProvider<VerifyBloc>(
                      create: (context) => locator.get<VerifyBloc>())
                ], child: const SignInScreen())),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        footerPadding: EdgeInsets.symmetric(vertical: 24.0),
        imagePadding: EdgeInsets.all(24),
        bodyAlignment: Alignment.center,
        bodyFlex: 1,
        pageColor: Colors.white,
      );
}
