import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import '../../features/data/constants/basic_Auth.dart';
import '../../features/data/constants/constants.dart';
import '../domain/sign_up_model_class.dart';

@lazySingleton
class UserdetailsnetworkService{

  Future<List<UserDetails>>isAdUserExist(String mobileNo) async {

    var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
    final response2 = await http.get(
        Uri.parse(
            '${Constants.baseDefaultApiUrl}/${Entities.user}?_where=username=\'${mobileNo}\''),
        headers: headers);
    List<UserDetails> adUserdetails= [];
    if (response2.statusCode == 200)
    {
      final responsebody2 = jsonDecode(response2.body) as Map<String, dynamic>;
      final res2 = responsebody2['response'] as Map<String, dynamic>;
      for (var record in res2['data'])
      {
        var adUserclientDetails = UserDetails.fromJson(record);
        adUserdetails.add(adUserclientDetails);
      }
      return adUserdetails;
    }
    else
      {
      throw Exception('Failed to load album');
      }
  }




}