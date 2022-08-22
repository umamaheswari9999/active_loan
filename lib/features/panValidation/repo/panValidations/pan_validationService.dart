import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../../../data/constants/constants.dart';
import '../../domain/detailsfromClientmastervthifsc.dart';
import '../../domain/panValidationclass_page.dart';

@lazySingleton
class PANdetailsnetworkServiece{

  Future<List<Details>> fetchingPANdetailsofexistedUserClientmaster(String panno) async {
    // URL
    const String url =
        '${Constants.baseCustomApiUrl}/${CustomWebServices.clientMasterDetails}?l=Appal&p=welcome';

    // METHOD: POST
    // REQUEST BODY
    final String requestBody = json.encode({
      "data": {"poiNumber": panno}
    });

    // API CALL
    final result = await http.post(Uri.parse(url), body: requestBody);
    // RESPONSE
    List<Details> listDetails = [];
    if (result.statusCode == 200) {
      var responseBody = result.body;
      var jsonResponse = json.decode(responseBody) as Map<String, dynamic>;
      var response = jsonResponse['response'];
      for (var record in response['data']) {
        Details details = Details.fromJson(record['ClientMaster_Header']);
        listDetails.add(details);
      }}
    return listDetails;
  }
  Future<Panvalidation?> PANvalidationdigio(String panno, Username, Password) async {
    Panvalidation? panvalues;
    try {

      String basicAuth =
          'Basic ${base64Encode(utf8.encode('$Username:$Password'))}';
      var headers = <String, String>{
        'authorization': basicAuth,
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST',
          Uri.parse(CustomWebServices.panvalidation));
      request.body = json.encode({"id_no": panno});
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();

      final responsebody2 = jsonDecode(await response.stream.bytesToString()) as Map<String, dynamic>;
      panvalues=Panvalidation.fromJson(responsebody2);
      return panvalues;
    }

    catch (e, st) {
      return panvalues;
    }
  }




}