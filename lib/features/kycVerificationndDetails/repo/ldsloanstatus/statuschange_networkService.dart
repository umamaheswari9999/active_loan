import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../../../data/constants/basic_Auth.dart';
import '../../../data/constants/constants.dart';
@lazySingleton
class LdsapploanstatusUpdate{
  Future<bool> UpdatingStatustoAIwithAddressID(String id, currentAddressid) async {
    var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
    var request = http.Request(
        'POST',
        Uri.parse(
            '${Constants.baseDefaultApiUrl}/${Entities.preEnquiry}/'));


    request.body = json.encode({
      "data": {
        "id": id,
        "lDSApploanstatus": "AI",
        "location": "EBCE46629F5149DB8447AC3DE88D6818",
        "currentaddress": currentAddressid
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    bool status = false;
    if (response.statusCode == 200) {


      status = true;
    } else {


      status = false;
    }
    return status;
  }
  UpdatingStatustoRKYC( String id) async {
    var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
    var request = http.Request('POST',
        Uri.parse('${Constants.baseDefaultApiUrl}/${Entities.preEnquiry}/'));
    request.body = json.encode({
      "data": {"id": id, "lDSApploanstatus": "RKYC"}
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {


    } else {


    }
  }

}