import 'package:flutter/material.dart';
import 'package:myapp/Dashboard.dart';
import 'package:myapp/welcome/login.dart';

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
      decoration: BoxDecoration(
          // color: Colors.blueGrey
          ),
      child: Stack(
        children: [
          Login(
            loginAction: widget.loginAction,
          )
        ],
      ),
    );
  }
}
