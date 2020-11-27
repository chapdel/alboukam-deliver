import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider{
  static Future<String>  isLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    return localStorage.getString('access_token');
  }

  static currentUser() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = localStorage.getString('user');
    if (user != null) {
      return json.decode(user);
    } else {
      return false;
    }
  }

  static login(String email, String password) async {
    var data = {'email': email, 'password': password};
    //var r = await Bio.post('login', data: data);
    //var rParsed = jsonDecode(r.body);
    await Future.delayed(Duration(seconds: 5));

    var r = {
      "email": "me@chapdel.xyz",
      "name": "Chapdel KAMGA",
      "verified": false,
    };

    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString('access_token', 'nullhhh');
    localStorage.setString('user', jsonEncode(r));

    return 'success';
  }

  static logout() async {
    //await Bio.post('account/logout');
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString('access_token', null);
    localStorage.setString('user', null);
    return true;
  }
}