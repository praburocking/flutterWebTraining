import 'package:flutter/material.dart';

class CompName extends StatefulWidget {
  @override
  _CompNameState createState() => _CompNameState();
}

class _CompNameState extends State<CompName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "P",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        Text(
          "R",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        Text(
          "Comp",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
        )
      ]),
    );
  }
}
