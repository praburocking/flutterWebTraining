import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

    // final spinkit = SpinKitSquareCircle(
    //   color: Colors.white,
    //   size: 50.0,
    //   controller: AnimationController(
    //       vsync: this, duration: const Duration(milliseconds: 1200)),
    // );

    return Column(
      children: [
        Container(),
        Obx(() => authController.isLogedIn.value
            ? redirector(to: '/home')
            : redirector(to: '/login'))
      ],
    );
  }
}

class redirector extends StatelessWidget {
  final String to;
  redirector({this.to});
  @override
  Widget build(BuildContext context) {
    Get.toNamed(to);
    return Container(
      child: SizedBox(
        width: 0,
        height: 0,
      ),
    );
  }
}
