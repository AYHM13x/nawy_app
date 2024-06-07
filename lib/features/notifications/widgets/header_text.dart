import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;

  HeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Cairo',
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: Color(0xFF252B5C),
        ),
      ),
    );
  }
}
