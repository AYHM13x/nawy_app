import 'package:flutter/material.dart';

class customSearsh extends StatelessWidget {
  const customSearsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 64,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(3, 7), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: Row(
        children: [
          GestureDetector(
            child: const Icon(Icons.search),
          ),
          Container(width: 250, child: const TextField()),
          GestureDetector(
            child: const Icon(Icons.camera),
          ),
          GestureDetector(
            child: const Icon(Icons.filter),
          ),
        ],
      ),
    );
  }
}
