import 'package:flutter/material.dart';
import 'package:myapp/home/innerWidgets/dashboard/views/StageView.dart';

class CardsScreen extends StatefulWidget {
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  List<Map<String, dynamic>> cardsData = [
    {"headerColor": 0xffBBFF33, "stageName": 'Start', "stageId": '23423423'},
    {"headerColor": 0xff33C4FF, "stageName": 'process', "stageId": '23423423'},
    {
      "headerColor": 0xffAF33FF,
      "stageName": 'waiting for dependency',
      "stageId": '23423423'
    },
    {"headerColor": 0xffFF3342, "stageName": 'closed', "stageId": '23423423'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 25),
      width: MediaQuery.of(context).size.width - 120,
      height: MediaQuery.of(context).size.height - 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardsData.length,
        itemBuilder: (context, index) {
          return StageView(
            headerColor: cardsData[index]["headerColor"],
            stageName: 'Start',
            stageId: 'werwrw',
          );
        },
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
