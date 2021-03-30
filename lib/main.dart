import 'package:flutter/material.dart';
import 'package:myapp/Dashboard.dart';
import 'package:myapp/NavBar.dart';
import 'package:myapp/welcome/welcome.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: isLoggedIn
              ? [NavBar(), DashBoard()]
              : [
                  WelcomePage(
                    loginAction: () {
                      setState(() {
                        isLoggedIn = true;
                      });
                    },
                  )
                ],
        ),
      ),
    );
  }
}
