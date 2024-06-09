import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String amount;
  final String percentage;

  InfoCard(
      {required this.title, required this.amount, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      width: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 9)),
          SizedBox(height: 10),
          Text(amount,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(percentage, style: TextStyle(color: Colors.grey, fontSize: 8)),
        ],
      ),
    );
  }
}
