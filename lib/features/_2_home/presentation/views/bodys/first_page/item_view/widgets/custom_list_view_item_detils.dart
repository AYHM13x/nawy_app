import 'package:flutter/material.dart';

class CustomListViewItemdetils extends StatefulWidget {
  const CustomListViewItemdetils({super.key});

  @override
  State<CustomListViewItemdetils> createState() =>
      _CustomListViewItemdetilsState();
}

class _CustomListViewItemdetilsState extends State<CustomListViewItemdetils> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 60,
        color: Colors.white,
        child: ListView.builder(
          itemCount: 5, // عدد العناصر في القائمة
          itemBuilder: (BuildContext context, int index) {
            return Container(
                child:
                    Image.asset("assets/images/pngs/unsplash_y3_AHHrxUBY.png"));
          },
        ));
  }
}
