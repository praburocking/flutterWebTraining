import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/home/innerWidgets/dashboard/views/Dashboard.dart';
import 'package:myapp/home/views/NavBar.dart';
import 'package:myapp/utilWidgets/splashScreen.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';
import 'package:myapp/welcome/views/welcome.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:get/get.dart';

void main() {
  setPathUrlStrategy();
  runApp(GetMaterialApp(
    initialRoute: '/login',
    getPages: [
      GetPage(name: '/', page: () => SplashScreen()),
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
