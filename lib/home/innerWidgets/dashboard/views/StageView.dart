import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/home/innerWidgets/dashboard/views/DraggableCard.dart';

class StageView extends StatefulWidget {
  final String stageName;
  final String stageId;
  final int headerColor;
  StageView({this.stageName, this.stageId, this.headerColor});
  @override
  _StageViewState createState() => _StageViewState();
}

class _StageViewState extends State<StageView> {
  String text =
      "Note the fromJson factory method called on the PortalInfo which takes the Map<String, dynamic> object and returns the parsed PortalInfo object.";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 800,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 255,
                margin: EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(widget.headerColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(widget.stageName,
                    style: GoogleFonts.quicksand(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 5, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(widget.headerColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Text("+",
                    style: GoogleFonts.quicksand(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Expanded(
            child: DragTarget(
              builder: (context, accept, reject) => ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  DraggableCard(
                      icon: Feather.bell,
                      hoverColor: Colors.amber,
                      text: text,
                      title: "qwerty",
                      percent: 60,
                      id: "1"),
                  DraggableCard(
                      icon: Feather.bell,
                      hoverColor: Colors.amber,
                      text: text,
                      title: "qwerty",
                      percent: 60,
                      id: "2"),
                  DraggableCard(
                      icon: Feather.bell,
                      hoverColor: Colors.amber,
                      text: text,
                      title: "qwerty",
                      percent: 60,
                      id: "3"),
                  DraggableCard(
                      icon: Feather.bell,
                      hoverColor: Colors.amber,
                      text: text,
                      title: "qwerty",
                      percent: 60,
                      id: "4"),
                  DraggableCard(
                      icon: Feather.bell,
                      hoverColor: Colors.amber,
                      text: text,
                      title: "qwerty",
                      percent: 60,
                      id: "5"),
                  DraggableCard(
                      icon: Feather.bell,
                      hoverColor: Colors.amber,
                      text: text,
                      title: "qwerty",
                      percent: 60,
                      id: "5"),
                ],
              ),
              onAccept: (Object data) {
                print(data);
              },
            ),
          ),
        ],
      ),
    );
  }
}
