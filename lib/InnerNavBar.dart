import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class InnerNavBar extends StatefulWidget {
  @override
  _InnerNavBarState createState() => _InnerNavBarState();
}

class _InnerNavBarState extends State<InnerNavBar> {
  List<bool> selectList = [true, false, false, false, false];

  void touched(int n) {
    setState(() {
      for (int i = 0; i < selectList.length; i++) {
        if (i == n) {
          selectList[i] = true;
        } else {
          selectList[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        alignment: Alignment.center,
        child: Column(
          children: [
            NavItem(
              name: 'Home',
              touched: () => {touched(0)},
              selected: selectList[0],
              iconData: Feather.home,
            ),
            NavItem(
              name: 'Home',
              touched: () => {touched(1)},
              selected: selectList[1],
              iconData: Feather.message_square,
            ),
            NavItem(
              name: 'Home',
              touched: () => {touched(2)},
              selected: selectList[2],
              iconData: Feather.settings,
            )
          ],
        ));
  }
}

class NavItem extends StatefulWidget {
  final String name;
  final bool selected;
  final IconData iconData;
  final Function touched;

  NavItem({this.name, this.selected, this.iconData, this.touched});
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            widget.touched();
          },
          splashColor: Colors.amber[200],
          hoverColor: Colors.amber[200],
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 3),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Row(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 465),
                          decoration: BoxDecoration(
                              color: widget.selected
                                  ? Colors.amber[200]
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Icon(
                            widget.iconData,
                            color: widget.selected
                                ? Colors.accents[200]
                                : Colors.transparent,
                            size: 19.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
