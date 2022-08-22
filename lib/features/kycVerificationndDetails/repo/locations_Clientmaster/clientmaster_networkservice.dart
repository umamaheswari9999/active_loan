import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../../../data/constants/constants.dart';
import '../../domain/clientmaster_locations.dart';
import '../../domain/current_address.dart';
@lazySingleton
  class ClientmasterLocationsfetch{
  Future<List<ClientMaster_Locations>> fetchlocationsofUser(String panno) async {
    // URL
    const String url =
        '${Constants.baseCustomApiUrl}/${CustomWebServices.clientMasterDetails}?l=Appal&p=welcome';
    // REQUEST BODY
    final String requestBody = json.encode({
      "data": {"poiNumber": panno}
    });
    // API CALL
    final result = await http.post(Uri.parse(url), body: requestBody);
    // RESPONSE
    List<ClientMaster_Locations> current = [];

    if (result.statusCode == 200) {
      var responseBody = result.body;
      var jsonResponse = json.decode(responseBody) as Map<String, dynamic>;
      var response = jsonResponse['response'];
      for (var record in response['data']) {
        for (var address in record['ClientMaster_Locations']) {
          CurrentAddress currenobj =
          CurrentAddress.fromJson(address['currentAddress']);
          ClientMaster_Locations location =
          ClientMaster_Locations(currentAddress: currenobj);
          current.add(location);
        }
      }
    }
    return current;
  }


}