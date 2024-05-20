import 'package:flutter/material.dart';

class customElevatedBotton extends StatelessWidget {
  const customElevatedBotton(
    this.color, {
    super.key,
    required this.data,
    required this.onPressed,
  });
  final String data;
  final Color color;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
      onPressed: onPressed,
      child: Text(data),
    );
  }
}
