import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';

class AuthMiddleware extends GetMiddleware {
  final authController = Get.find<AuthController>();
  List authenticatedEndPoints = ['/home'];
  List unAuthenticatedEndPoints = ['/login'];

  @override
  RouteSettings redirect(String route) {
    print("middleware auth ==>" +
        route +
        " value ==>" +
        authController.isLogedIn.value.toString());
    if (route == '/login' && authController.isLogedIn.value) {
      return RouteSettings(name: '/home');
    } else if (!authController.isLogedIn.value &&
        authenticatedEndPoints.contains(route)) {
      return RouteSettings(name: '/login');
    }
    return null;
  }
}
