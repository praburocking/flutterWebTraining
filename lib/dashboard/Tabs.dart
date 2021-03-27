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
      return Container(
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                index == widget.selected ? Colors.black : Colors.transparent),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            hoverColor: Colors.transparent,
            onTap: () {
              widget.onSelect(index);
            },
            child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: Text(widget.tabs[index],
                    style: GoogleFonts.quicksand(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: widget.selected == index
                            ? Colors.white
                            : Colors.black))),
          ),
        ),
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
