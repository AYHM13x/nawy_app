import 'package:flutter/material.dart';

class CustomMapChoose extends StatelessWidget {
  const CustomMapChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Colors.amber,
        width: 327,
        height: 356,
      ),
      SizedBox(
          width: 327,
          child: ElevatedButton(
              onPressed: () {}, child: const Text("اختر على الخريطة")))
    ]);
  }
}
