import 'dart:convert';
import 'dart:developer' as logger ;
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import '../../../data/constants/basic_Auth.dart';
@lazySingleton
class LoandetailsnetworkServiece{
  Future<bool> razorPayRequest(String loanno, amount,bpartner,emidueSelectedIds,invoiceSelectedIds,paymentId) async {
    var headers = <String, String>{
      'authorization': BasicAuth().basicAuthentication()
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://testsairoshni.nettlinx.com/erp/ws/com.saksham.loandetails.AdvancepaymentIn?'));
    request.body = json.encode({
      "data": {
        "LoanNumber":loanno,
        ///need to change
        "Amount":amount,
        "BusinessPartnerId": bpartner,
        "EmidetId": emidueSelectedIds,
        "OtherchargesId": invoiceSelectedIds,
        "RazorpayId": paymentId
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    bool status = false;
    final res = await response.stream.bytesToString();
    var data = jsonDecode(res) as Map<String, dynamic>;
    var statusCode = data['status'];
    if (statusCode == "SUCCESS") {
      status = true;
    } else {
      status = false;
    }
    return status;
  }}