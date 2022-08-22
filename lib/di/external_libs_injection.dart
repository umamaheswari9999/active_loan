import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ExternalLibs {
  @lazySingleton
  http.Client get client {
    final httpClient = HttpClient();
    httpClient.connectionTimeout = const Duration(seconds: 30);

    if (kDebugMode) {
      httpClient.badCertificateCallback = (_, __, ___) => true;
    }
    final http.Client client = IOClient(httpClient);
    return client;
  }

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(

  );
}