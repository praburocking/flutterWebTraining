import 'package:flutter/material.dart';
import 'package:myapp/dashboard/StageView.dart';

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
      width: MediaQuery.of(context).size.width - 120,
      height: MediaQuery.of(context).size.height - 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StageView(
            headerColor: 0xffB8FF33,
            stageName: 'Start',
            stageId: 'werwrw',
          ),
          StageView(
            headerColor: 0xff33C4FF,
            stageName: 'process',
            stageId: 'werwrw',
          ),
          StageView(
            headerColor: 0xffAF33FF,
            stageName: 'dependency open',
            stageId: 'werwrw',
          ),
          StageView(
            headerColor: 0xffFF3342,
            stageName: 'failed',
            stageId: 'werwrw',
          ),
          StageView(
            headerColor: 0xff3CFF33,
            stageName: 'sucess',
            stageId: 'werwrw',
          ),
          StageView(
            headerColor: 0xff3CFF33,
            stageName: 'unprocessed',
            stageId: 'werwrw',
          ),
          StageView(
            headerColor: 0xff3CFF33,
            stageName: 'unprocessed',
            stageId: 'werwrw',
          )
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
