import 'dart:convert';

import 'package:chat_app/services/config.dart';
import 'package:http/http.dart' as https;

class AuthHelper {
  static var client = https.Client();
  // Signup
  static Future<bool> signup(model) async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};
    var url = Uri.https(Config.apiUrl, Config.signupUrl);

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(model));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
