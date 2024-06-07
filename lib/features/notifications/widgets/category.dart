import 'package:flutter/material.dart';

import 'category_button.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryButton(
              text: 'الكل',
              active: active == 0 ? true : false,
              onTap: () => changeStateBtnMenu(0),
            ),
            CategoryButton(
              text: 'شراء',
              active: active == 1 ? true : false,
              onTap: () => changeStateBtnMenu(1),
            ),
            CategoryButton(
              text: 'رحلات سفر',
              active: active == 2 ? true : false,
              onTap: () => changeStateBtnMenu(2),
            ),
            CategoryButton(
              text: 'بيع',
              active: active == 3 ? true : false,
              onTap: () => changeStateBtnMenu(3),
            ),
            CategoryButton(
              text: 'سيارات',
              active: active == 4 ? true : false,
              onTap: () => changeStateBtnMenu(4),
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
