import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:myapp/CompName.dart';
import 'package:myapp/InnerNavBar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool signOut = false;
  void handleSignOut() {
    setState(() {
      signOut = !signOut;
    });
  }

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
            InnerNavBar(),
            Container(
                alignment: Alignment.bottomCenter,
                child: NavItem(
                  name: 'Home',
                  touched: handleSignOut,
                  active: signOut,
                  icon: Feather.log_out,
                ))
          ],
        ),
      ),
    );
  }
}
