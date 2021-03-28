import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/dashboard/KanbanCard.dart';

class DraggableCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final Color hoverColor;
  final String text;
  final int percent;

  DraggableCard(
      {this.icon, this.title, this.hoverColor, this.text, this.percent});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard> {
  bool onHovered = false;
  @override
  Widget build(BuildContext context) {
    KanbanCard kanbanCard = KanbanCard(
        icon: widget.icon,
        title: widget.title,
        hoverColor: widget.hoverColor,
        text: widget.text,
        percent: widget.percent,
        onHovered: onHovered);
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
            child: Draggable(
              child: kanbanCard,
              feedback: kanbanCard,
            )));
  }
}