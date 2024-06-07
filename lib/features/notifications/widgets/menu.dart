import 'package:flutter/material.dart';

import 'menu_buutton.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xFFF5F4F8),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MenuButton(
              text: 'الاشعارات',
              active: active == 0 ? true : false,
              onTap: () => changeStateBtnMenu(0),
            ),
            MenuButton(
              text: 'الرسائل',
              active: active == 1 ? true : false,
              onTap: () => changeStateBtnMenu(1),
            ),
          ],
        ),
      ),
    );
  }

  void changeStateBtnMenu(int selected) {
    setState(() {
      active = selected;
    });
  }
}
