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
    return Positioned(
      top: 120,
      child: Container(
          height: 450,
          alignment: Alignment.center,
          child: Column(
            children: [
              NavItem(
                name: 'Home',
                touched: () => {touched(0)},
                active: selectList[0],
                icon: Feather.home,
              ),
              NavItem(
                name: 'Home',
                touched: () => {touched(1)},
                active: selectList[1],
                icon: Feather.message_square,
              ),
              NavItem(
                name: 'Home',
                touched: () => {touched(2)},
                active: selectList[2],
                icon: Feather.settings,
              )
            ],
          )),
    );
  }
}

class NavItem extends StatefulWidget {
  final String name;
  final bool active;
  final IconData icon;
  final Function touched;

  NavItem({this.name, this.active, this.icon, this.touched});
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print(widget.icon);
          widget.touched();
        },
        splashColor: Colors.white,
        hoverColor: Colors.white12,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          height: 60.0,
          width: 100.0,
          child: Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 475),
                height: 60.0,
                width: 5.0,
                decoration: BoxDecoration(
                  color: widget.active ? Colors.amber : Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Icon(
                  widget.icon,
                  color: widget.active ? Colors.amber : Colors.black,
                  size: 19.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
