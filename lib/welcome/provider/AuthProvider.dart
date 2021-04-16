import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:myapp/Constants.dart';
import 'package:myapp/welcome/models/loginRes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends GetConnect {
  SharedPreferences prefs = null;
  @override
  onInit() async {
    prefs = await SharedPreferences.getInstance();
    httpClient.defaultDecoder = (map) => LoginRes.fromJson(map);
    httpClient.baseUrl = Constants.URL_BASE + "/iam/";

    // httpClient.addResponseModifier<LoginRes>((request, response) {
    //   print(response);
    //   LoginRes model = response.body;
    //   if (model.authtoken != null) {
    //     model.authtoken = null;
    //   }
    //   return model;
    // });
  }

  Future<LoginRes> getAccount() async {
    if (prefs == null) {
      prefs = await SharedPreferences.getInstance();
    }
    String token = prefs.getString('token');
    if (token != null) {
      Map<String, String> headers = {"authorization": "token " + token};
      var response = await get(Constants.URL_BASE + "/iam/" + 'accounts',
          headers: headers);
      return LoginRes.fromJson(response.body);
    } else {
      return null;
    }
  }

  Future<LoginRes> login(var data) async {
    print(data);
    var response = await post("login", data);
    prefs.setString('token', response.body.authtoken);
    return LoginRes.fromJson(response.body);
  }
}
