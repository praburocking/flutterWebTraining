import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/home/innerWidgets/dashboard/views/Dashboard.dart';
import 'package:myapp/home/views/NavBar.dart';
import 'package:myapp/utilWidgets/splashScreen.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';
import 'package:myapp/welcome/provider/AuthProvider.dart';
import 'package:myapp/welcome/views/welcome.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:get/get.dart';

void init() {
  AuthController authController =
      Get.put(AuthController(authProvider: Get.put(AuthProvider())));
}

void main() {
  setPathUrlStrategy();
  init();
  AuthController authController = Get.find();
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => CustomSplashScreen()),
      GetPage(
          name: '/login',
          page: () {
            return Material(
              child: WelcomePage(
                loginAction: () {},
              ),
            );
          }),
      GetPage(
          name: '/home',
          page: () => Material(
                  child: Stack(
                children: [NavBar(), DashBoard()],
              ))),
    ],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.find();
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
