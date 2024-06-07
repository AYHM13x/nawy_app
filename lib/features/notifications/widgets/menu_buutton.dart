import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final bool active;
  final Function() onTap;

  MenuButton({required this.text, required this.onTap, required this.active});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: active ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: active ? Color(0xFF252B5C) : Color(0xFFA1A5C1),
          ),
        ),
      ),
    );
  }
}
