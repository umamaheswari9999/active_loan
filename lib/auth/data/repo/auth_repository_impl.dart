import 'dart:convert';
import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../../../features/data/constants/basic_Auth.dart';
import '../../../features/data/constants/constants.dart';
import '../../domain/repo/auth_repository.dart';
import '../model/user_dto.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  Future<bool> hasInternet() async {
    var connection = await Connectivity().checkConnectivity();
    return connection != ConnectivityResult.none;
  }

  @override
  Future<Either<Failure, bool>> sendOtp(
      String mobileNo, otpSend) async {
    print(otpSend);

    if (await hasInternet()) {
      try {
        var headers = <String, String>{
          'authorization': BasicAuth().basicAuthentication()
        };

        var request = http.Request(
            'POST',
            Uri.parse(
                '${Constants.baseCustomApiUrl}/${CustomWebServices.sendSMS}'));
        request.body = json.encode({
          "data": {
            "mobilenumber": mobileNo,
            "templateid": "1407162762466847246",
            "variable": {
              "var1": otpSend,
            }
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
        print("SENDING STATUS $status");
        return right(status);
      } catch (e, st) {
        log(e.toString());
        return left(Failure.apiFailure(e.toString()));
      }
    } else {
      return left(Failure.noInternet());
    }
  }

  @override
  Future<List<AdUserdetails>> isClientExist(String mobileNo) async {
    var headers = <String, String>{
      'authorization': BasicAuth().basicAuthentication()
    };
    final response2 = await http.get(
        Uri.parse(
            '${Constants.baseDefaultApiUrl}/${Entities.user}?_where=username=\'$mobileNo\'&_endRow=0'),
        headers: headers);
    List<AdUserdetails> adUserdetails = [];
    if (response2.statusCode == 200) {
      final responsebody2 = jsonDecode(response2.body) as Map<String, dynamic>;
      final res2 = responsebody2['response'] as Map<String, dynamic>;

      for (var record in res2['data']) {
        var adUserclientDetails = AdUserdetails.fromJson(record);
        adUserdetails.add(adUserclientDetails);
      }
      return adUserdetails;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<bool> verifyOtp(String mobileNo, enterOtp) async {
    var headers = <String, String>{
      'authorization': BasicAuth().basicAuthentication()
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            '${Constants.baseCustomApiUrl}/${CustomWebServices.verifyOTP}'));
    request.body = json.encode({
      "data": {"mobilenumber": mobileNo, "otp": enterOtp}
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    bool status = false;
    final res = await response.stream.bytesToString();
    var data = jsonDecode(res) as Map<String, dynamic>;
    var statusCode = data['status'];
    if (response.statusCode == 200) {
      if (statusCode == 200) {
        status = true;
      }
    } else {
      status = false;
    }

    return status;
  }

  Future<bool> createUser(String mobileNo, otpSend, uname, aadhaarNumber) async {
    var headers = <String, String>{
      'authorization': BasicAuth().basicAuthentication()
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            '${Constants.baseCustomApiUrl}/${CustomWebServices.createUser}'));
    request.body = json.encode({
      "data": {
        "name": uname,
        "passwd": otpSend,
        "username": mobileNo,
        "client": "D1B565840F95464DA296746768738853",
        "updatepasswd": "n",
        "role": "1E74CB816F1A45D7BAC64B59BE132A01"
      }
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    bool status = false;
    final res = await response.stream.bytesToString();
    var data = jsonDecode(res) as Map<String, dynamic>;
    var statusCode = data['status'];
    if (statusCode == "SUCCESS") {
      var res = await updateUserAadhaar(aadhaarNumber,uname,mobileNo);
      status= res;
    } else {
      status = false;
    }
    print(status);
    return status;
  }
}

Future<bool> updateUserAadhaar(
    String aadhaarNumber, String uname, String mobileNumber) async {
  try {
    bool? status;
    var headers = <String, String>{
      'authorization': BasicAuth().basicAuthentication()
    };
    final response2 = await http.get(
        Uri.parse(
            '${Constants.baseDefaultApiUrl}/${Entities.user}?_where=username=\'$mobileNumber\'&_endRow=0'),
        headers: headers);
    print(response2.request);
    String? uid;
    if (response2.statusCode == 200) {
      final responsebody2 = jsonDecode(response2.body) as Map<String, dynamic>;
      final res2 = responsebody2['response'] as Map<String, dynamic>;
      for (var record in res2['data']) {
        var adUserclientDetails = AdUserdetails.fromJson(record);
        uid = adUserclientDetails.id;
      }
      print(uid);
      if (uid != null) {
        var reqBody = jsonEncode({
          'data': {
            "_entityName": Entities.user,
            "alternativePhone": aadhaarNumber,
            "id": uid
          }
        });
        var request = await http.post(
            Uri.parse('${Constants.baseDefaultApiUrl}/${Entities.user}'),
            body: reqBody,
            headers: headers);
        print(request.statusCode);
        if (request.statusCode == 200) {
          status = true;
        } else {
          status = false;
        }
      }
    }
    print("Aadhaar status : $status");
    return status!;
  } catch (er, st) {
    print(er);
    return false;
  }
}
