import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';
import 'package:myapp/welcome/views/login.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomePage extends StatelessWidget {
  final Function loginAction;
  WelcomePage({this.loginAction});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

    Widget welcome = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.61,
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: false,
              ),
              items: [
                "https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Center(
                          child: Image.network(
                        i,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height,
                      )),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Login()
        ],
      ),
    );
    return Obx(() {
      print('auth value in welcome ==> ' +
          authController.isLogedIn.value.toString());
      if (authController.isLogedIn.value) {
        Get.toNamed('/home');
        return null;
      } else {
        return welcome;
      }
    });
    //Obx(() => authController.isLogedIn.value ? Get.toNamed('/home') : welcome);
  }
}
