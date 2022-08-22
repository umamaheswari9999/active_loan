// import 'package:active_loan/auth/presentation/bloc/ad_user/ad_user_bloc.dart';
// import 'package:active_loan/auth/presentation/bloc/ad_user/ad_user_event.dart';
// import 'package:active_loan/auth/presentation/bloc/ad_user/ad_user_state.dart';
// import 'package:active_loan/di/injection.dart';
// import 'package:active_loan/features/homeScreen/presentation/homeconstants.dart';
// import 'package:active_loan/kyc_verify/presentation/bloc/kyc_verify_bloc.dart';
// import 'package:active_loan/kyc_verify/presentation/screen/kyc_verify_page.dart';
// import 'package:active_loan/sign_up/presentation/sigun_up_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../../../features/emi_charges/presentation/screen/emi_charges_screen.dart';
// import '../../../features/my_loans_inf/presentation/bloc/my_loans_inf_bloc.dart';
// import '../../../my_loans/presentation/bloc/my_loans_bloc.dart';
// import '../../../my_loans/presentation/bloc/my_loans_event.dart';
// import '../../../my_loans/presentation/screen/my_loans_screen.dart';
//
// class CheckUser extends StatefulWidget {
//   final String mobileController;
//   final String otpController;
//   const CheckUser(
//       {super.key, required this.mobileController, required this.otpController});
//   @override
//   _CheckUserState createState() => _CheckUserState();
// }
//
// class _CheckUserState extends State<CheckUser> {
//   @override
//   void initState() {
//     BlocProvider.of<UserCheckBloc>(context)
//         .add(UserCheck(widget.mobileController, widget.otpController));
//     super.initState();
//     // checkLoginStatus();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<UserCheckBloc, AduserCheckState>(
//         listener: (context, state) async {
//           SharedPreferences preferences = await SharedPreferences.getInstance();
//           if (state is AduserCheckStateSuccess) {
//             if (state.aduserCheckStatus)
//             {
//               preferences.setBool('login', true);
//               preferences.setBool('aduserCheckStatus', true); Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) =>  MultiBlocProvider(
//                     providers: [
//                       BlocProvider(
//                         create: (context) => locator.get<MyLoansInfBloc>(),
//                       ),
//                       BlocProvider(
//                         create: (context) =>
//                         locator.get<MyLoansBloc>()..add(FetchMyloansEvent()),
//                       ),
//                     ],
//                     child: MyLoansScreen(),
//                   )));
//               //
//             }
//             else {
//               preferences.setBool('login', true);
//               preferences.setBool('aduserCheckStatus', false);
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => BlocProvider(
//                         create: (context) => locator.get<KycVerifyBloc>(),
//                         child:  const SignUpPage(),
//                       )));
//             }
//           }
//         },
//         builder: (context, state) {
//           if (state is AduserCheckStateInitial) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is AduserCheckStateSuccess) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is AduserCheckStateLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is AduserCheckStateFailure) {
//             return Text(state.message ?? 'Can\'t able to verify User');
//           }
//           return const Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
// }
