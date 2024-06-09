import 'package:flutter/material.dart';

import 'tab_button.dart';

class TabsBar extends StatefulWidget {
  const TabsBar({super.key});

  @override
  State<TabsBar> createState() => _TabsBarState();
}

class _TabsBarState extends State<TabsBar> {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton(
              onTap: () => changeSelection(0),
              title: 'المتنية',
              isActive: selected == 0 ? true : false,
            ),
            TabButton(
                onTap: () => changeSelection(1),
                title: 'المنجزة',
                isActive: selected == 1 ? true : false),
            TabButton(
              onTap: () => changeSelection(2),
              title: 'كل الطلبات',
              isActive: selected == 2 ? true : false,
            ),
          ],
        ),
      ),
    );
  }

  void changeSelection(int value) {
    setState(() {
      selected = value;
    });
  }
}
