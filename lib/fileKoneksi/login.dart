import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warungkuy_mobile/fileKoneksi/ResponseDB.dart';
import 'package:warungkuy_mobile/fileKoneksi/api.dart';

class LoginAPI {
  final String email;
  final String password;
  LoginAPI({required this.email, required this.password});

  Future<String> prosesLogin() async {
    try {
      final response = await http.post(Uri.parse(API.loginApi), body: {
        'email': email,
        'password': password,
      });

      if (response.body == ResponseDB.succLogin) {
        final result = json.decode(response.body);
        print(result);
        return result;
      } else if (response.body == ResponseDB.failLogin) {
        final result = json.decode(response.body);
        return result;
      } else {
        return 'Error';
      }
    } catch (e) {
      return 'Cant Connect to API';
    }
  }
}
