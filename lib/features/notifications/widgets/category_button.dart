import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final bool active;
  final Function() onTap;

  const CategoryButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: const WidgetStatePropertyAll<Color?>(Colors.transparent),
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 13.5),
        decoration: BoxDecoration(
          color: active ? Colors.purple : Color(0xFFF5F4F8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
            fontSize: 12,
            color: active ? Colors.white : Color(0xFF252B5C),
          ),
        ),
      ),
    );
  }
}
