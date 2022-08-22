import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../../../data/constants/basic_Auth.dart';
import '../../../data/constants/constants.dart';
@lazySingleton
class AdditionalInformation{
  Future<bool> UpdatingSttatusoBDandAdditionaldatails(String id,gender,maritalstatus,occupation,residency,number,alternumber,fathername,employeename,
      officenumber,ofcemail,designation,annualinc,emailid) async {
    var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
    var request = http.Request(
        'POST',
        Uri.parse(
            '${Constants.baseDefaultApiUrl}/${Entities.preEnquiry}/'));
    request.body = json.encode({
      "data": {
        "id": id,
        "gender": gender,
        "maritalstatus": maritalstatus,
        "occupationtype": occupation,
        "residentialstatus": residency,
        "mobilenumber": number,
        "alternatenumber": alternumber,
        "fathername": fathername,
        "employername": employeename,
        "officephonenumber": officenumber,
        "officialEmail": ofcemail,
        "designation": designation,
        "annualincome": annualinc,
        "emailid": emailid,
        "lDSApploanstatus": "BD"
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    bool statusbd = false;
    if (response.statusCode == 200) {
      statusbd = true;
    } else {
      statusbd = true;
    }
    return statusbd;
  }

}