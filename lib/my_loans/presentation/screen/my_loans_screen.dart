import 'package:active_loan/features/emi_charges/presentation/bloc/emi_charges_bloc.dart';
import 'package:active_loan/features/emi_charges/presentation/bloc/other_charges_bloc.dart';
import 'package:active_loan/features/emi_charges/presentation/screen/emi_charges_screen.dart';
import 'package:active_loan/features/my_loans_inf/presentation/bloc/my_loans_inf_bloc.dart';
import 'package:active_loan/my_loans/presentation/bloc/my_loans_bloc.dart';
import 'package:active_loan/my_loans/presentation/bloc/my_loans_state.dart';
import 'package:active_loan/features/my_loans_inf/presentation/screen/my_loans_inf_screen.dart';
import 'package:active_loan/sign_up/presentation/sigun_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../../../di/injection.dart';
import '../../../shared/currency_formatter_utils.dart';
import '../../../shared/style_color.dart';
import '../../../shared/styles.dart';

class MyLoansScreen extends StatefulWidget {
  MyLoansScreen({Key? key}) : super(key: key);
  @override
  _MyLoansScreenState createState() => _MyLoansScreenState();
}
class _MyLoansScreenState extends State<MyLoansScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  void initState()
  {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xE9E9F6FF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(38, 81, 158, 1.0),
          title: const Text("LOAN DETAILS"),
          actions: const <Widget>[]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            const Text(
              " ACTIVE LOANS",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(38, 81, 158, 1.0)),
            ),
            const SizedBox(
              height: 8,
            ),
            BlocConsumer<MyLoansBloc, MyLoansState>(
              listener: (context, state) {
                print(state);
                if (state is MyLoansStateSuccess) {
                  if(state.myloans.isEmpty) return;
                  BlocProvider.of<MyLoansInfBloc>(context)
                      .fetchMyLoanDetails(state.myloans.first.loanno);
                }
              },
              builder: (context, state) {
                if (state is MyLoansStateInitial ||
                    state is MyLoansStateLoading) {
                  return const CupertinoActivityIndicator();
                } else if (state is MyLoansStateSuccess) {
                  var draft = state.myloans
                      .where((element) => element.recordstatus == "Draft")
                      .toList();
                  if(draft.isEmpty){
                    return const Center(child: Text('No Active Loans Found'));
                  }
                  return SizedBox(
                    height: 190,
                    child: ListView.builder(
                      padding:
                          const EdgeInsets.only(left: 16, top: 4, right: 16),
                      scrollDirection: Axis.horizontal,
                      itemCount: draft.length,
                      itemBuilder: (context, index) {
                        return VisibilityDetector(
                          key: Key(index.toString()),
                          onVisibilityChanged: (VisibilityInfo info) {
                            if (draft.isNotEmpty && info.visibleFraction == 1) {
                              BlocProvider.of<MyLoansInfBloc>(context)
                                  .fetchMyLoanDetails(draft[index].loanno);
                            }
                          },
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      // builder: (_) => MyLoansInfScreen(loanno: state.myloans[index].loanno)
                                      builder: (_) => const SignUpPage()
                                  ));
                            },
                            child: SizedBox(
                              width: 300,
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: const BorderSide(
                                    color: AppColors.lightGrey,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      contentPadding: const EdgeInsets.all(8.0),
                                      title: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '#${draft[index].loanno}'
                                                  .toUpperCase(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.blueGrey),
                                            ),
                                          ),
                                        ],
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 6),
                                          Text(
                                            '#${draft[index].applicantname}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                          const SizedBox(height: 2),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Loan Amount'.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          const SizedBox(width: 12),
                                          CircleAvatar(
                                              radius: 2,
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                          const SizedBox(width: 12),
                                          Text(CurrencyFormatter
                                              .getFormattedAmount(
                                                  draft[index].loanamount)),
                                          const SizedBox(width: 12),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Loan Period'.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          const SizedBox(width: 12),
                                          CircleAvatar(
                                              radius: 2,
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                          const SizedBox(width: 12),
                                          Text(
                                            '4/10',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 55,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13.0),
                                                    side: const BorderSide(
                                                      color: Color.fromRGBO(
                                                          38, 81, 158, 1.0),
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: const Text('Pay'),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            MultiBlocProvider(
                                                              providers: [
                                                                BlocProvider(
                                                                    create: (context) => locator.get<EmiChargesBloc>()..fetchEmis(draft[index].id)),
                                                                BlocProvider(
                                                                    create: (context) => locator.get<OtherChargesBloc>()..FetchOtherCharges(draft[index].id))
                                                              ],
                                                              child: const ChargesPage(),
                                                            )));
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else if (state is MyLoansStateFailure) {
                  return Text(state.message!);
                }

                return const SizedBox();
              },
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<MyLoansInfBloc, MyLoansInfState>(
              builder: (context, state) {
                print(state);
                return state.when(
                    initial: () => const SizedBox(),
                    loading: () => const Center(child: CupertinoActivityIndicator()),
                    success: (data) {
                      if(data.isEmpty){
                        return const SizedBox();
                      }
                       var record = data.first;
                      return Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: const BorderSide(
                                  color: AppColors.lightGrey,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'EMI Outstanding'.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                ?.copyWith(
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          '₹ ${record.emioutstanding}',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  38, 81, 158, 1.0)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Other Charges Outstanding'
                                                .toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                ?.copyWith(
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          "₹ ${record.othercharges}",
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  38, 81, 158, 1.0)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'EMI Overdue'.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                ?.copyWith(
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          " ₹ ${record.emioverdueamount}",
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  38, 81, 158, 1.0)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Next EMI Due Date'.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                ?.copyWith(
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          record.nextemidate ?? ' - ',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  38, 81, 158, 1.0)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Pending Emi\'s',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                ?.copyWith(
                                                  color: Colors.grey.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          record.nextemidate ?? ' - ',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  38, 81, 158, 1.0)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    failure: (f) => const SizedBox());
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: _menuItem('Loan & \nEMI Details',
                      FontAwesomeIcons.dollarSign, blueGradient),
                ),
                InkWell(
                  onTap: () {},
                  child: _menuItem('Charges', FontAwesomeIcons.cashRegister,
                      darkRedGradient),
                ),
                InkWell(
                  onTap: () {},
                  child: _menuItem('Loan Documents',
                      FontAwesomeIcons.envelopeOpen, tealGradient),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(String title, IconData iconData, LinearGradient gradient) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.3,
      width: MediaQuery.of(context).size.width * 0.26,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: gradient,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(iconData, size: 24, color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
