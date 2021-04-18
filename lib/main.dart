import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/home/innerWidgets/dashboard/views/Dashboard.dart';
import 'package:myapp/home/views/NavBar.dart';
import 'package:myapp/middlewares/AuthMiddleWare.dart';
import 'package:myapp/utilWidgets/splashScreen.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';
import 'package:myapp/welcome/provider/AuthProvider.dart';
import 'package:myapp/welcome/views/welcome.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:get/get.dart';

void init() {}

void main() async {
  setPathUrlStrategy();
  AuthController authController =
      Get.put(AuthController(authProvider: Get.put(AuthProvider())));
  bool islogedIn = true;
  print("main check in loged in ==>{0}" + islogedIn.toString());
  runApp(GetMaterialApp(
    initialRoute: '/login',
    getPages: [
      GetPage(name: '/', page: () => CustomSplashScreen()),
      GetPage(
        name: '/login',
        middlewares: [AuthMiddleware()],
        page: () {
          return Material(
            child: WelcomePage(
              loginAction: () {},
            ),
          );
        },
      ),
      GetPage(
          name: '/home',
          page: () => Material(
                  child: Stack(
                children: [NavBar(), DashBoard()],
              )),
          middlewares: [AuthMiddleware()]),
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

class MiddleWare {
  static observer(Routing routing) {
    /// You can listen in addition to the routes, the snackbars, dialogs and bottomsheets on each screen.
    ///If you need to enter any of these 3 events directly here,
    ///you must specify that the event is != Than you are trying to do.
    if (routing.current == '/second' && !routing.isSnackbar) {
      Get.snackbar("Hi", "You are on second route");
    } else if (routing.current == '/third') {
      print('last route called');
    }
  }
}
