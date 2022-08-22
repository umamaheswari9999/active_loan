import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'auth/presentation/screen/signIn_screen.dart';
import 'di/injection.dart';
import 'onboarding/presentation/screen/onboarding_page.dart';
class CustomerApp extends StatelessWidget {
  const CustomerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  OnBoardingPage(),

    );
  }
}