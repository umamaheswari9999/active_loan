import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../utils/context_utils.dart';
import '../../../data/constants/basic_Auth.dart';
import '../../../data/constants/constants.dart';

@lazySingleton
class KycFlowsteps {
  Future<String> SendKYCotp(String id) async {
    var headers = <String, String>{
      'authorization': BasicAuth().basicAuthentication()
    };
    String otp;
    var request = http.Request(
        'POST',
        Uri.parse(
            '${Constants.baseCustomApiUrl}/${CustomWebServices.sendKycOtp}'));
    request.body = json.encode({
      "data": {"preEnquiryFormId": id, "action": "Send OTP"}
    });
    request.headers.addAll(headers);
    return request.send().then((value) {
      return http.Response.fromStream(value).then((response) {
        var result = json.decode(response.body) as Map<String, dynamic>;
        otp = result['data']['OTP'];
        return result['data']['OTP'];
      });
    });
  }

  Future<bool> VerifyKYCotp(enteredotp, otpserver, id) async {
    bool status = false;
    if (otpserver == enteredotp) {
      status = true;

      var headers = <String, String>{
        'authorization': BasicAuth().basicAuthentication()
      };

      var request = http.Request(
          'POST',
          Uri.parse(
              '${Constants.baseCustomApiUrl}/${CustomWebServices.sendKycOtp}'));
      request.body = json.encode({
        "data": {
          "preEnquiryFormId": id,
          "action": "Verify OTP",
          "otp": otpserver
        }
      });
      request.headers.addAll(headers);
      request.send().then((value) {
        http.Response.fromStream(value).then((response) {
          json.decode(response.body) as Map<String, dynamic>;
        });
      });
    } else {
      status = false;
    }

    return status;
  }
}
