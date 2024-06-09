import 'package:flutter/material.dart';

class OrderRowHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('المصدر', style: TextStyle(color: Colors.grey, fontSize: 12)),
          Text('السعر', style: TextStyle(color: Colors.grey, fontSize: 12)),
          Text('الربح', style: TextStyle(color: Colors.grey, fontSize: 12)),
          Text('تفاصيل', style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}
