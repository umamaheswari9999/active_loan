import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../shared/style_color.dart';
import '../../../../shared/styles.dart';

class MyLoansInfScreen extends StatefulWidget {
  final String loanno;
  MyLoansInfScreen({Key? key, required this.loanno}) : super(key: key);

  @override
  _MyLoansInfScreenState createState() => _MyLoansInfScreenState();
}

class _MyLoansInfScreenState extends State<MyLoansInfScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xE9E9F6FF),
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("LOAN"),
          actions: const <Widget>[]),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(12.0),
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Text(
                            '# ${widget.loanno}'.toUpperCase(),
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                                side: const BorderSide(
                                  color: Colors.lightBlueAccent,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          child: const Text('Pay'),
                          onPressed: () {

                          },
                        ),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 2),
                        Text(
                          'Loan Amount',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.blueGrey,
                                  ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(children: [
                          Text(
                            '₹ 60000',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          Text(
                            'Loan Period :4/10',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
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
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'EMI Outstanding'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(color: Colors.grey.shade800,
                              fontWeight: FontWeight.w700,),
                          ),
                        ),
                        const Text(
                          " ₹ 40000",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlueAccent),
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
                            'Other Charges Outstanding'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(color: Colors.grey.shade800,
                              fontWeight: FontWeight.w700,),
                          ),
                        ),
                        const Text(
                          "₹ 600000",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlueAccent),
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
                            'EMI Outstanding'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(color: Colors.grey.shade800,
                              fontWeight: FontWeight.w700,),
                          ),
                        ),
                        const Text(
                          " ₹ 80000",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlueAccent),
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
                                ?.copyWith(color: Colors.grey.shade800,
                              fontWeight: FontWeight.w700,),

                          ),
                        ),
                        const Text(
                          " ₹ 900000",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlueAccent),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: _menuItem('Loan & \nEMI Details', FontAwesomeIcons.dollarSign,
                    blueGradient),
              ),
              InkWell(
                onTap: () {},
                child: _menuItem('Charges',
                    FontAwesomeIcons.cashRegister, darkRedGradient),
              ),
              InkWell(
                onTap: () {},
                child: _menuItem('Loan Documents',
                    FontAwesomeIcons.envelopeOpen, tealGradient),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: _menuItem('Loan & \nEMI Details', FontAwesomeIcons.dollarSign,
                    blueGradient),
              ),
              InkWell(
                onTap: () {},
                child: _menuItem('Charges',
                    FontAwesomeIcons.cashRegister, darkRedGradient),
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
