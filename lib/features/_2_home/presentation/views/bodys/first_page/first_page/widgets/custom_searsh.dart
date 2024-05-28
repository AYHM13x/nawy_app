import 'package:flutter/material.dart';

class customSearsh extends StatelessWidget {
  const customSearsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 64,
      decoration: const BoxDecoration(
        border:
            Border.symmetric(horizontal: BorderSide(), vertical: BorderSide()),
        // boxShadow: [
        // BoxShadow(
        //   color: Colors.white,
        //   spreadRadius: 5,
        //   blurRadius: 7,
        //   offset: Offset(3, 7), // changes position of shadow
        // ),
        // ],
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 10),
        child: Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.search),
            ),
            const SizedBox(width: 250, child: TextField()),
            GestureDetector(
              child: const Icon(Icons.photo),
            ),
            GestureDetector(
              child: const Icon(Icons.filter),
            ),
          ],
        ),
      ),
    );
  }
}
