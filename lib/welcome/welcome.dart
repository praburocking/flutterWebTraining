import 'package:flutter/material.dart';
import 'package:myapp/welcome/login.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomePage extends StatefulWidget {
  final Function loginAction;
  WelcomePage({this.loginAction});
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Login(
            loginAction: widget.loginAction,
          )
        ],
      ),
    );
  }
}
