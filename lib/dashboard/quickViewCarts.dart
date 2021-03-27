import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickViewCart extends StatefulWidget {
  final IconData icon;
  final String title;
  final Color hoverColor;
  final String text;
  final int percent;

  QuickViewCart(
      {this.icon, this.title, this.hoverColor, this.text, this.percent});

  @override
  _QuickViewCartState createState() => _QuickViewCartState();
}

class _QuickViewCartState extends State<QuickViewCart> {
  bool onHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            onHovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            onHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: onHovered ? 250 : 245,
          height: onHovered ? 150 : 145,
          decoration: BoxDecoration(
              color: onHovered ? widget.hoverColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 20.0, spreadRadius: 5)
              ]),
          child: Container(
            margin: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        widget.icon,
                        color: onHovered ? Colors.white : Colors.black,
                        size: 15,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: onHovered ? Colors.black : Colors.transparent),
                    ),
                    Container(
                      child: Text(
                        widget.title,
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    widget.text,
                    style: GoogleFonts.akronim(
                        fontWeight: FontWeight.w100, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
