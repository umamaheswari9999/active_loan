import 'package:active_loan/scan_qrcode/presentation/screen/qr_scanner_screen.dart';
import 'package:flutter/material.dart';
class ScannerScreen extends StatefulWidget {

  const ScannerScreen({Key? key}) : super(key: key);

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QRViewExample(),
              )).then((value) {
                result=value;
                setState(() {

                });
              });
            },
            child: const Text('qrView'),
          ),
         Text(result ?? ''),
        ],
      ),


    );


  }
}