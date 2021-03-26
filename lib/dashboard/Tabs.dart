import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabs extends StatefulWidget {
  final List<String> tabs;
  final int selected;
  final Function onSelect;
  Tabs({this.tabs, this.selected, this.onSelect});
  @override
  _TabState createState() => _TabState();
}

class _TabState extends State<Tabs> {
  List<Widget> _createTab() {
    return new List<Widget>.generate(widget.tabs.length, (int index) {
      return InkWell(
        onTap: () {
          widget.onSelect(index);
        },
        child: Container(
            margin: EdgeInsets.only(left: 15),
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == widget.selected ? Colors.black : Colors.white),
            child: Text(widget.tabs[index],
                style: GoogleFonts.quicksand(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: widget.selected == index
                        ? Colors.white
                        : Colors.black))),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _createTab(),
      ),
    );
  }
}
