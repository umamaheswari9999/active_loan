import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:active_loan/auth/domain/entity/user.dart';
import 'package:active_loan/di/injection.dart';
import 'package:active_loan/features/data/constants/constants.dart';
import 'package:active_loan/loans/data/model/attachment_dto.dart';
import 'package:active_loan/loans/domain/entity/attachment.dart';
import 'package:active_loan/shared/locator.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'failure.dart';
import 'network_utils.dart';
typedef Parser<T> = T Function(Map<String, dynamic> json);
typedef Headers = Map<String, String> Function();
@lazySingleton
class ApiHelper {
  final http.Client client;
  ApiHelper(this.client);
  Future<Either<Failure, List<dynamic>>> get(String url, String defErrMsg, [Headers? headers]) async {
    var result = await _safeApiCall(
        () => client.get(Uri.parse(url),
            headers: headers == null ? _getAuthHeader() : headers()),
        defErrMsg);
    return result.fold((l) => left(l), (r) => right(r as List<dynamic>));
  }
  Future<Either<Failure, List<dynamic>>> getPreference(
      String url, String defErrMsg, String username, String password) async {
    var result = await _safeApiCall(
        () => client.get(Uri.parse(url),
            headers: _constructAuthHeader(username, password)),
        defErrMsg);
    return result.fold((l) => left(l), (r) => right(r as List<dynamic>));
  }

  Future<Either<Failure, List<dynamic>>> post(
      String url, String body, String defErrMsg,
      [Headers? headers]) async {
    var result = await _safeApiCall(
        () => client.post(Uri.parse(url),
            body: body,
            headers: headers == null ? _getAuthHeader() : headers()),
        defErrMsg);
    return result.fold((l) => left(l), (r) => right(r as List<dynamic>));
  }

  Future<Either<Failure, dynamic>> loanApiPost(
    String url,
    String body,
    String defErrMsg, {
    Headers? headers,
    bool needFullResponse = false,
  }) async {
    var result = await _safeApiCall(
      () => client.post(Uri.parse(url),
          body: body, headers: headers == null ? _getAuthHeader() : headers()),
      defErrMsg,
      isCustomLoanApi: true,
      needFullResponse: needFullResponse,
    );
    return result;
  }

  Future<Either<Failure, Attachment>> addAttachment(
      String entityName, String id, String name, File attachment) async {
    try {
      final String defErrMsg = "Could not upload attachment: ${attachment.path}";
      const String url =
          "${Constants.baseCustomApiUrl}/${CustomWebServices.attachmentWs}";
      final request = http.MultipartRequest("POST", Uri.parse(url));
      final User user = getLoggedInUser();

      // Auth Header
      request.headers.putIfAbsent(
        HttpHeaders.authorizationHeader,
        () => constructAuthHeaderValue(user.username, user.password),
      );

      request.fields.putIfAbsent('record_id', () => id);
      request.fields.putIfAbsent('entity_name', () => entityName);
      request.fields.putIfAbsent('client_id', () => user.clientId);
      request.fields.putIfAbsent('org_id', () => user.organizationId);

      var fileName = '$name${path.extension(attachment.path)}';
      var file = await http.MultipartFile.fromPath('file', attachment.path,
          filename: fileName);

      request.files.add(file);

      var data = await _safeApiCall(() async {
        http.StreamedResponse streamedResponse = await request.send();
        return await http.Response.fromStream(streamedResponse);
      }, defErrMsg);

      return data.fold(
          (l) => left(l),
          (r) => right(
              AttachmentDto.fromJson(r[0] as Map<String, dynamic>).toDomain()));
    } catch (e, st) {
      return left(Failure.unknownFailure());
    }
  }

  ///
  /// Safe network call with exception handling and internet check
  ///
  /// Note: Network response should be in the following format
  ///
  /// {
  ///  response: {
  ///         status: <status code>,
  ///         data: [<list of business objects>],
  ///         error: {
  ///             message: <error message>
  ///         },
  ///         message: <error message>,
  ///     }
  ///  }
  ///
  ///
  Future<Either<Failure, dynamic>> _safeApiCall(
    Future<http.Response> Function() call,
    String defErrMsg, {
    bool isCustomLoanApi = false,
    bool needFullResponse = false,
  }) async {
    try {
      if (await hasInternet() == false) {
        return left(Failure.noInternet());
      }

      final response = await call();
      final statusCode = response.statusCode;
      final resBody = response.body;

      if (kDebugMode) {
        _printInfo(response);
      }

      if (statusCode >= 200 && statusCode < 300) {
        final jsonRes = json.decode(resBody) as Map<String, dynamic>;

        if (isCustomLoanApi) {
          var status = jsonRes['status'];
          if (status == 200) {
            if (needFullResponse) {
              return right(jsonRes);
            }
            final data = jsonRes['data'];
            return right(data);
          } else {
            var message = jsonRes['message'];
            return left(Failure.serverFailure(statusCode, message));
          }
        } else {
          final obResponse = _getResponseJson(resBody);
          if (obResponse['status'] == 0) {
            final dataArr = obResponse['data'] as List<dynamic>;
            return right(dataArr);
          } else {
            if (resBody.isEmpty) {
              return left(Failure.serverFailure(
                  Constants.emptyServerResponse, defErrMsg));
            }
            String message = getErrorMsgFromResponse(obResponse, defErrMsg);
            return left(Failure.serverFailure(statusCode, message));
          }
        }
      } else {
        if (statusCode == 401) {
          return left(Failure.unAuthorized());
        } else if (statusCode >= 500) {
          return left(
              Failure.serverFailure(statusCode, 'Internal server error'));
        }
      }
    } on SocketException catch (e, st) {
      // TODO report error
      dev.log(e.message, stackTrace: st);
    } catch (ex, st) {
      // TODO report error
      dev.log('API EXCEPTION', stackTrace: st);
    }
    return left(Failure.unknownApiFailure());
  }

  Map<String, dynamic> _getResponseJson(String resBody) {
    final jsonRes = json.decode(resBody) as Map<String, dynamic>;
    final obResponse = jsonRes['response'] as Map<String, dynamic>;
    return obResponse;
  }

  /// Fetches OB Error message from network response
  String getErrorMsgFromResponse(
      Map<String, dynamic> obResponse, String defMsg) {
    try {
      return obResponse['error'] != null
          ? obResponse['error']['message'] ?? defMsg
          : obResponse['message'] ?? obResponse['errors'] != null
              ? (obResponse['errors'] as Map<String, dynamic>).values.toString()
              : obResponse['error'] ?? defMsg;
    } catch (error, st) {
      return defMsg;
    }
  }

  /// Constructs the Base64 header for the Authorization
  String constructAuthHeaderValue(String username, String password) =>
      'Basic ${base64Encode(utf8.encode('$username:$password'))}';

  /// Authorization Header
  Map<String, String> _getAuthHeader() {
    final user = locator.get<User>();
    return {
      'Authorization': constructAuthHeaderValue(user.username, user.password),
    };
  }

  Map<String, String> _constructAuthHeader(String username, String password) {
    return {
      'Authorization': constructAuthHeaderValue(username, password),
    };
  }

  void _printInfo(http.Response response) {
    dev.log(
        '${response.statusCode} ${response.request?.method} ${response.request?.url}');
    dev.log('Content Length: ${response.contentLength}');
    dev.log('Response Body: ${response.body}');
  }
}
