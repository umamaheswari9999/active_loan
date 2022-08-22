import 'package:active_loan/auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:active_loan/features/homeScreen/domain/loandetails.dart';
import 'package:active_loan/di/injection.dart';
import 'package:active_loan/utils/string_utils.dart';
import 'package:active_loan/utils/currency_formatters_utils.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../auth/presentation/bloc/otp_verification/otp_verification_bloc.dart';
import '../../../auth/presentation/screen/signIn_screen.dart';
import '../../../utils/context_utils.dart';
import '../../../widgets/styles.dart';
import '../../kycVerificationndDetails/presentation/kyc_Page.dart';
import '../repo/loans_repository.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<Loandetails> loansList = [];
  List<Loandetails> PreloanList = [];
  @override
  void initState() {
    locator.get<Repo>().loandetails().then((value) {
      loansList.addAll(value[0]);
      PreloanList.addAll(value[1]);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RichText(
                      text: const TextSpan(
                        text: 'EZ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'FIN',
                              style: TextStyle(
                                color: Color.fromRGBO(150, 221, 95, 1),
                              )),
                          TextSpan(text: 'ANZ'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.lightBlue[100],
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        preferences.clear();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => MultiBlocProvider(providers: [
                                      BlocProvider<SignInBloc>(
                                        create: (context) {
                                          return locator.get<SignInBloc>();
                                        },
                                      ),
                                      BlocProvider<VerifyBloc>(
                                        create: (context) =>
                                            locator.get<VerifyBloc>(),
                                      )
                                    ], child: const SignInScreen())));
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.lightBlue[100],
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  "YOUR FIN BUDDY",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Colors.blue[100]),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(18))),
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.date_range,
                            color: Colors.blue[900],
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Scan&Apply",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.blue[100]),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(18))),
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.public,
                            color: Colors.blue[900],
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Request",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.blue[100]),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(18))),
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.attach_money,
                            color: Colors.blue[900],
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Loan",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.blue[100]),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(18))),
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.trending_down,
                            color: Colors.blue[900],
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Topup",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.blue[100]),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          //draggable sheet
          DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(243, 245, 248, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              "Recent Transactions",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.grey[800]),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),

                      //Container for buttons
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10.0,
                                        spreadRadius: 4.5)
                                  ]),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),

                            ),
                            //  const SizedBox(
                            //   width: 200.0,
                            //   child: Image(
                            //     image: AssetImage("assets/images/ezfinanz_logo_new.png",),
                            //     height: 125.0,
                            //     width: 300.0,
                            //   ),
                            // ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10.0,
                                        spreadRadius: 4.5)
                                  ]),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                children: <Widget>[
                                  const CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Income",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.grey[900]),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10.0,
                                        spreadRadius: 4.5)
                                  ]),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                children: <Widget>[
                                  const CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.orange,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Expenses",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.grey[900]),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      // SingleChildScrollView(
                      //   padding: EdgeInsets.all(10),
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       _promotionCard('  We provide affordable loans',
                      //           'assets/images/cash-back.png'),
                      //       SizedBox(
                      //         width: 18,
                      //       ),
                      //       _promotionCard('Flexible repayment option',
                      //           'assets/images/profit.png'),
                      //     ],
                      //   ),
                      // ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: const Text(
                          " RECENT DRAFT LOANS",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlueAccent),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 180,
                        child: loansList.isEmpty
                            ? const Text("Nothing is Here")
                            : ListView.builder(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 4, right: 16),
                                scrollDirection: Axis.horizontal,
                                itemCount: loansList.length,
                                itemBuilder: (context, index) {
                                  var date = loansList[index].creationDate;
                                  var OriginalDate =
                                      DateFormat('yyyy-MM-ddTHH:mm:ss+05:30');
                                  var uiDate = DateFormat.MMMd();
                                  var newDate =
                                      uiDate.format(OriginalDate.parse(date));

                                  return InkWell(
                                    onTap: () {},
                                    child: SizedBox(
                                      width: 300,
                                      child: Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          side: const BorderSide(
                                            color: AppColors.lightGrey,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ListTile(
                                              contentPadding:
                                                  const EdgeInsets.all(12.0),
                                              title: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '#${loansList[index].loanNo}'
                                                          .toUpperCase(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: Colors
                                                                  .blueGrey),
                                                    ),
                                                  ),
                                                  Icon(FeatherIcons.info,
                                                      size: 20,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary),
                                                ],
                                              ),
                                              subtitle: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 6),
                                                  Text(
                                                    '#${loansList[index].customername}',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1
                                                        ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                  const SizedBox(height: 2),
                                                  Text(
                                                    StringUtils.getMaskedAadhaar(
                                                        loansList[index]
                                                                .prooftypenumber ??
                                                            ''),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        ?.copyWith(
                                                            color:
                                                                Colors.black54),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12.0),
                                              child: Row(
                                                children: [
                                                  Text(CurrencyFormatter
                                                      .getFormattedAmount(
                                                          loansList[index]
                                                                  .loanamount ??
                                                              0)),
                                                  const SizedBox(width: 12),
                                                  CircleAvatar(
                                                      radius: 2,
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .colorScheme
                                                              .primary),
                                                  const SizedBox(width: 12),
                                                  Text(newDate),
                                                  const SizedBox(width: 8),
                                                  CircleAvatar(
                                                      radius: 2,
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .colorScheme
                                                              .primary),
                                                  const SizedBox(width: 8),
                                                  // Expanded(child: Text(LoanStage.mapStage(loan.appLoanStatus ?? ''), maxLines: 1)),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: LinearProgressIndicator(
                                                  value:
                                                      getLoanProgressPercentage(
                                                          loansList[index]
                                                              .lDSApploanstatus),
                                                  backgroundColor:
                                                      AppColors.lightGrey,
                                                  valueColor:
                                                      const AlwaysStoppedAnimation<
                                                          Color>(
                                                    Colors.green,
                                                  ),
                                                  minHeight: 8,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: const Text(
                          "RECENT PRE APPROVED LOANS",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlueAccent),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 180,
                        child: PreloanList.isEmpty
                            ? const Text("Nothing is Here")
                            : ListView.builder(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 4, right: 16),
                                scrollDirection: Axis.horizontal,
                                itemCount: PreloanList.length,
                                itemBuilder: (context, index) {
                                  var date = PreloanList[index].creationDate;
                                  var OriginalDate =
                                      DateFormat('yyyy-MM-ddTHH:mm:ss+05:30');
                                  var uiDate = DateFormat.MMMd();
                                  var newDate =
                                      uiDate.format(OriginalDate.parse(date));

                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => KycVerification(
                                                    id: PreloanList[index].id,
                                                    panno: PreloanList[index]
                                                            .panno ??
                                                        '',
                                                    lDSApploanstatus:
                                                        PreloanList[index]
                                                            .lDSApploanstatus,
                                                    prooftypenumber: PreloanList[
                                                                index]
                                                            .prooftypenumber ??
                                                        '',
                                                    mobilenumber:
                                                        PreloanList[index]
                                                                .mobilenumber ??
                                                            '',
                                                    gender: PreloanList[index]
                                                        .gender,
                                                    customername:
                                                        PreloanList[index]
                                                                .customername ??
                                                            '',
                                                  )));
                                    },
                                    child: SizedBox(
                                      width: 300,
                                      child: Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          side: const BorderSide(
                                            color: AppColors.lightGrey,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ListTile(
                                              contentPadding:
                                                  const EdgeInsets.all(12.0),
                                              title: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '#${PreloanList[index].loanNo}'
                                                          .toUpperCase(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: Colors
                                                                  .blueGrey),
                                                    ),
                                                  ),
                                                  Icon(FeatherIcons.info,
                                                      size: 20,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary),
                                                ],
                                              ),
                                              subtitle: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 6),
                                                  Text(
                                                    '#${PreloanList[index].customername}',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1
                                                        ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                  const SizedBox(height: 2),
                                                  Text(
                                                    StringUtils.getMaskedAadhaar(
                                                        PreloanList[index]
                                                                .prooftypenumber ??
                                                            ''),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        ?.copyWith(
                                                            color:
                                                                Colors.black54),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12.0),
                                              child: Row(
                                                children: [
                                                  // Text(PreloanList[index].loanamount.toString()),
                                                  Text(CurrencyFormatter
                                                      .getFormattedAmount(
                                                          PreloanList[index]
                                                                  .loanamount ??
                                                              0)),
                                                  const SizedBox(width: 12),
                                                  CircleAvatar(
                                                      radius: 2,
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .colorScheme
                                                              .primary),
                                                  const SizedBox(width: 12),
                                                  Text(newDate),
                                                  const SizedBox(width: 8),
                                                  CircleAvatar(
                                                      radius: 2,
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .colorScheme
                                                              .primary),
                                                  const SizedBox(width: 8),
                                                  // Expanded(child: Text(LoanStage.mapStage(loan.appLoanStatus ?? ''), maxLines: 1)),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: LinearProgressIndicator(
                                                  value:
                                                      getLoanProgressPercentage(
                                                          PreloanList[index]
                                                              .lDSApploanstatus),
                                                  backgroundColor:
                                                      AppColors.lightGrey,
                                                  valueColor:
                                                      const AlwaysStoppedAnimation<
                                                          Color>(
                                                    Colors.green,
                                                  ),
                                                  minHeight: 8,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                ),
              );
            },
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 1,
          )
        ],
      ),
    );
  }

  _promotionCard(String title, String assetUrl) {
    return SizedBox(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0XFFDDFF3FF),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                    )
                  ]),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(assetUrl, height: 80, fit: BoxFit.fitHeight),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }

  // ProgressBar creation

  // ProgresBar value

}
