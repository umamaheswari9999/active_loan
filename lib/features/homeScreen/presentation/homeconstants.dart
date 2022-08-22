import 'package:active_loan/features/my_loans_inf/presentation/bloc/my_loans_inf_bloc.dart';
import 'package:active_loan/my_loans/presentation/bloc/my_loans_bloc.dart';
import 'package:active_loan/my_loans/presentation/bloc/my_loans_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../di/injection.dart';
import '../../../my_loans/presentation/screen/my_loans_screen.dart';
import '../../../scan_qrcode/presentation/screen/button_page.dart';
import 'home_page.dart';
class HomePageInt extends StatefulWidget {
  const HomePageInt({Key? key}) : super(key: key);
  @override
  _HomePageIntState createState() => _HomePageIntState();
}
class _HomePageIntState extends State<HomePageInt> {
  var screens = [
    const HomeScreen(),
    MultiBlocProvider(
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
    )
  ];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 81, 158, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "My Loans"),
        ],
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ScannerScreen()));
        },
        elevation: 0,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab],
    );
  }
}
