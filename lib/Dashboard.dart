import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/dashboard/CardsScreen.dart';
import 'package:myapp/dashboard/Tabs.dart';
import 'package:myapp/dashboard/quickViewCarts.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<String> tabs = ['home', 'testing', 'dependency waiting', 'completed'];
  int selected = 0;
  void tabSelect(int num) {
    setState(() {
      selected = num;
      print("selected number " + selected.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 100,
        child: Container(
          width: MediaQuery.of(context).size.width * 63,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, left: 30, bottom: 20),
                child: Text(
                  "Welcome Prabu..!",
                  style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              Tabs(
                selected: selected,
                tabs: tabs,
                onSelect: tabSelect,
              ),
              CardsScreen()
            ],
          ),
        ));
  }
}

// crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
//           child: Text(
//             'Ongoing Projects',
//             style: GoogleFonts.quicksand(
//               fontWeight: FontWeight.bold,
//               fontSize: 20.0,
//             ),
//           ),
//         ),
