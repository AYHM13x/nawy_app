import 'package:flutter/material.dart';

class customElevatedBotton extends StatelessWidget {
  const customElevatedBotton(
    this.color, {
    super.key,
    required this.data,
  });
  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
      onPressed: () {},
      child: Text(data),
    );
  }
}
