import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/home/innerWidgets/dashboard/views/Dashboard.dart';
import 'package:myapp/home/views/NavBar.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';
import 'package:myapp/welcome/views/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:get/get.dart';
import 'package:cookie_jar/cookie_jar.dart';

void main() async {
  Cookie c = Cookie("name", "prabu");
  c.httpOnly = false;
  List<Cookie> cookies = [c, Cookie("location", "china")];
  var cj = CookieJar();
  //Save cookies
  await cj.saveFromResponse(Uri.parse("http://localhost:8000/"), cookies);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // await prefs.setInt('counter', 987212);
  print(prefs.getInt('counter'));
  List<Cookie> results =
      await cj.loadForRequest(Uri.parse("http://localhost:8000/"));
  print(results);
  setPathUrlStrategy();
  runApp(GetMaterialApp(
    home: MyApp(),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => MyApp()),
      GetPage(
          name: '/login',
          page: () => Material(
                child: WelcomePage(
                  loginAction: () {},
                ),
              )),
      GetPage(
          name: '/home',
          page: () => Material(
                  child: Stack(
                children: [NavBar(), DashBoard()],
              )))
    ],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Obx(() => controller.isLogedIn.value
              ? Stack(children: [NavBar(), DashBoard()])
              : Stack(children: [WelcomePage()]))),
    );
  }
}
