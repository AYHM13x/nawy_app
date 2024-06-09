import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        'عرض المزيد',
        style: TextStyle(color: Colors.blue, fontSize: 14),
      ),
    );
  }
}
