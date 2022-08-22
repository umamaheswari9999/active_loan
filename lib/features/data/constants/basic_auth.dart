import 'dart:convert';

class BasicAuth {
  String basicAuthentication() {
    String basicAuth = 'Basic ${base64Encode(utf8.encode('Appal:welcome'))}';
    return basicAuth;
  }
}
