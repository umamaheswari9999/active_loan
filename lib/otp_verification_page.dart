// import 'package:active_loan/auth/presentation/bloc/sign_in/sign_in_bloc.dart';
// import 'package:active_loan/auth/presentation/widget/otp_verify.dart';
// import 'package:active_loan/kyc_verify/presentation/bloc/kyc_verify_bloc.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../../di/injection.dart';
// import '../../../kyc_verify/presentation/screen/kyc_verify_page.dart';
// import '../../../my_loans/presentation/screen/my_loans_screen.dart';
// class OtpVerificationPage extends StatefulWidget {
//   const OtpVerificationPage({Key? key}) : super(key: key);
//   @override
//   _OtpVerificationPageState createState() => _OtpVerificationPageState();
// }
// class _OtpVerificationPageState extends State<OtpVerificationPage> {
//   String? number;
//   @override
//   void initState() {
//     // checkLogin();
//     super.initState();
//   }
//   void checkLogin() async
//   {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     bool? login = preferences.getBool("login");
//     if (login == true) {
//       bool? user = preferences.getBool("aduserCheckStatus");
//       if (user == true)
//       {
//         Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MyLoansScreen()));
//       }
//       else
//       {
//         Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
//             BlocProvider(create: (context) => locator.get<KycVerifyBloc>(),
//               child: const KycverifyScreen(),)));}
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // ),
//         elevation: 0,
//         toolbarHeight: 0,
//       ),
//       backgroundColor: Colors.white,
//       extendBodyBehindAppBar: true,
//         body: Padding(
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Expanded(
//                     flex: 7,
//                     child: SafeArea(
//                       child: Image.asset('assets/images/ezfinanz_logo_new.png', width: 200, height: 100,),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 7,
//                     child: Container(
//                       padding: const EdgeInsets.all(24.0),
//                       decoration: BoxDecoration(
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(16.0),
//                             topRight: Radius.circular(16.0),),
//                           gradient: LinearGradient(
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                               colors: [
//                                 Colors.white,
//                                 Theme.of(context)
//                                     .colorScheme
//                                     .primary
//                                     .withAlpha(60),
//                               ])),
//                       child: SingleChildScrollView(
//                         child: _OtpbuildBody(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//
//     );
//   }
//   Widget _OtpbuildBody() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         OtpVerifyWidget(mobileNo: number!),
//       ],
//     );
//   }
// }
//
// void _showError(String message, BuildContext context) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(
//         message,
//         style: TextStyle(
//           fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
//         ),
//       ),
//       elevation: 16.0,
//       behavior: SnackBarBehavior.floating,
//       padding: const EdgeInsets.all(16.0),
//     ),
//   );
// }
