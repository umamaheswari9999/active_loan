import 'dart:convert';
import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../../../data/constants/basic_Auth.dart';
import '../../../data/constants/constants.dart';

@lazySingleton
class FormcreationNetworkServiece {
  Future<bool> formLoanCreation(String Name, PAN, Aadhar, Gender, moblileNumber, Dob) async {
    bool status = false;
    try {
      var headers = <String, String>{
        'authorization': BasicAuth().basicAuthentication()
      };
      var request = http.Request('POST',
          Uri.parse('${Constants.baseDefaultApiUrl}/${Entities.preEnquiry}'));
      request.body = json.encode({
        "data":
        {
          "customername": Name,
          "prooftypenumber": Aadhar,
          "mobilenumber": moblileNumber,
          "gender": Gender,
          "panno": PAN,
          "dateofbirth": Dob,
          "lDSApploanstatus": "DR"
        }
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        status = true;
      } else {
        status = false;
      }
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      status=false;
    }
    return status;
  }
}
