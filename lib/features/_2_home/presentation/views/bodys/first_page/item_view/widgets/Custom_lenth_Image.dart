import 'package:flutter/material.dart';

class CustomlenthImage extends StatelessWidget {
  const CustomlenthImage(
      {super.key, required this.data, required this.textNumbeer});
  final String data;
  final String textNumbeer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(data), Text(textNumbeer)],
    );
  }
}
