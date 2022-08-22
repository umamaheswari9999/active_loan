import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart'as http;
class payRazor extends StatefulWidget {
  final double totalAmount;

  const payRazor({super.key, required this.totalAmount});
  // final String loanno;
  // final String bpartner;
  // dynamic otherchargesSum;
  // final List<dynamic> invoiceSelectedIds;
  // final List<dynamic> emidueSelectedIds;
  // payRazor(this.loanno, this.bpartner, this.invoiceSelectedIds,this.emidueSelectedIds, this.otherchargesSum);
  @override
  _payRazorState createState() => _payRazorState();
}
class _payRazorState extends State<payRazor> {
  late Razorpay _razorpay;
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: const Text('Razorpay Sample App'),
        ),
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(onPressed: openCheckout, child: Text('Open'))
                ])),
      );

  }
  @override
  void initState() {
    super.initState();
    openCheckout();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }
  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }
  void openCheckout() async {
    var options = {
      'key': 'rzp_test_mLnquwXYklSN51',//rzp_test_tluH0PuJ7JGVkl
      ///need to change
      'amount':(widget.totalAmount)*100,
      'name': 'EZFINANZ',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact':'9704578117', 'email': 'umakarri99@gmail.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: $response');
    /*Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId!,
        toastLength: Toast.LENGTH_SHORT); */
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: $response');
    /* Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message!,
        toastLength: Toast.LENGTH_SHORT); */
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: $response');
    /* Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT); */
  }
}

  // requestSuccess(String Username ,Password, String paymentId) async {
  //   String basicAuth =
  //       'Basic ' + base64Encode(utf8.encode('$Username:$Password'));
  //   var headers= <String, String>{'authorization': basicAuth};
  //   var request = http.Request('POST', Uri.parse('https://testsairoshni.nettlinx.com/erp/ws/com.saksham.loandetails.AdvancepaymentIn?l=sai&p=welcome'));
  //   request.body = json.encode({
  //     "data": {
  //       "LoanNumber": widget.loanno,
  //       ///need to change
  //       "Amount":widget.otherchargesSum,
  //       "BusinessPartnerId": widget.bpartner,
  //       "EmidetId": widget.emidueSelectedIds,
  //       "OtherchargesId": widget.invoiceSelectedIds,
  //       "RazorpayId": paymentId
  //     }
  //   });
  //   request.headers.addAll(headers);
  //
  //   http.StreamedResponse response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());
  //     print(widget.loanno);
  //     print(widget.bpartner);
  //
  //   }
  //
  //   else {
  //     print(response.reasonPhrase);
  //   }
  //
  // }




