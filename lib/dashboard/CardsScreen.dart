import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/dashboard/quickViewCarts.dart';

class CardsScreen extends StatefulWidget {
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  // List<Map<String,Dynamic>> cardsData=null;

  String text =
      "Note the fromJson factory method called on the PortalInfo which takes the Map<String, dynamic> object and returns the parsed PortalInfo object.";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 25),
      child: Row(
        children: [
          Container(
            width: 260,
            height: 800,
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  width: 260,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "step1",
                    style: GoogleFonts.quicksand(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: [
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 260,
            height: 800,
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  width: 260,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "step1",
                    style: GoogleFonts.quicksand(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: [
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 260,
            height: 800,
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  width: 260,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "step1",
                    style: GoogleFonts.quicksand(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: [
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                      QuickViewCart(
                        icon: Feather.bell,
                        hoverColor: Colors.amber,
                        text: text,
                        title: "qwerty",
                        percent: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 260,
            height: 800,
            margin: EdgeInsets.only(left: 3, right: 3),
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
              ],
            ),
          ),
          Container(
            width: 260,
            height: 800,
            margin: EdgeInsets.only(left: 3, right: 3),
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
                QuickViewCart(
                  icon: Feather.bell,
                  hoverColor: Colors.amber,
                  text: text,
                  title: "qwerty",
                  percent: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//  Row(
//           children: [
//             QuickViewCart(
//               icon: Feather.bell,
//               hoverColor: Colors.amber,
//               text: text,
//               title: "qwerty",
//               percent: 60,
//             ),
//             QuickViewCart(
//               icon: Feather.bell,
//               hoverColor: Colors.amber,
//               text: "test",
//               title: "qwerty",
//               percent: 60,
//             ),
//             QuickViewCart(
//               icon: Feather.bell,
//               hoverColor: Colors.amber,
//               text: "test",
//               title: "qwerty",
//               percent: 60,
//             ),
//           ],
//         ),

// Container(
//             width: 260,
//             height: 50,
//             margin: EdgeInsets.only(bottom: 10),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(10)),
//             child: Text(
//               "step1",
//               style: GoogleFonts.quicksand(fontSize: 16),
//             ),
//           ),
