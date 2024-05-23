import 'package:flutter/material.dart';

class CustomMapChose extends StatelessWidget {
  const CustomMapChose({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Colors.amber,
        width: 327,
        height: 356,
      ),
      Container(
          width: 327,
          child:
              ElevatedButton(onPressed: () {}, child: Text("اختر على الخريطة")))
    ]);
  }
}
