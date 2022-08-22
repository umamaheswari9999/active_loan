import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import '../../../../utils/context_utils.dart';
import '../../../data/constants/basic_Auth.dart';
import '../../../data/constants/constants.dart';
import '../../domain/bankDetailsclass.dart';
import '../../domain/existingAccountDetailsclass/existingDetails_page.dart';
@lazySingleton
class BankdetailsnetworkServiece{


  Future<bankexistingDetails>? fetchBankDetails(String ifsccode) async {
    // URL

    var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
    const String url =
        '${Constants.baseCustomApiUrl}/${CustomWebServices.fetchBankDetails}';

    // METHOD: POST
    // REQUEST BODY
    final String requestBody = json.encode({
      "data": {"ifscCode": ifsccode}
    });
    // API CALL
    final result = await http.post(Uri.parse(url), body: requestBody, headers: headers);
    // RESPONSE
    bankexistingDetails? bed;//Bank Existing Details
    if (result.statusCode == 200) {
      var responseBody = result.body;
      var jsonResponse = json.decode(responseBody) as Map<String, dynamic>;
      bed = bankexistingDetails.fromJson(jsonResponse['response']);
    }
    return bed!;
  }
  Future<List<BankNameDetails>> Banknames() async {

    var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
    final response2 = await http.get(
        Uri.parse(
            '${Constants.baseDefaultApiUrl}/${Entities.financialAccount}'),
        headers: headers);
    List<BankNameDetails> banknamedetails = [];
    if (response2.statusCode == 200) {
      final responsebody2 = jsonDecode(response2.body) as Map<String, dynamic>;

      final res2 = responsebody2['response'] as Map<String, dynamic>;
      for (var record in res2['data']) {
        var bankNameDetails = BankNameDetails.fromJson(record);
        banknamedetails.add(bankNameDetails);
      }

      return banknamedetails;
    } else {
      throw Exception('Failed to load album');
    }
  }
  Future<bool> Updatingbankdetailsfornewaccount(String id,bankSelected,accountNo,ifsccode,branchName,micrNo) async {

    var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
    var request = http.Request(
        'POST',
        Uri.parse('${Constants.baseCustomApiUrl}/${CustomWebServices.addNewBank}'));
    request.body = json.encode({
      "data": {"data": {
        "preEnquiryFormId":id,
        "accnumber": accountNo,
        "acctype": "Saving",
        "ifsccode": ifsccode,
        "bankname":bankSelected,
        "branchname": branchName,
        "micr":micrNo,}}});
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    bool statusbd = false;
    final res=await response.stream.bytesToString();
    var data = jsonDecode(res) as Map<String,dynamic>;
    if (response.statusCode == 200 && data['response']['status']!=-1) {
      statusbd = true;
    } else {
      statusbd = false;
    }
    return statusbd;
  }

}
