import 'package:flutter/material.dart';
import 'package:myapp/CompName.dart';
import 'package:myapp/InnerNavBar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100,
        color: Color(0xff235ad3),
        child: Stack(
          children: [
            CompName(),
            Container(alignment: Alignment.center, child: InnerNavBar()),
            Container(alignment: Alignment.bottomCenter, child: null)
          ],
        ),
      ),
    );
  }
}
