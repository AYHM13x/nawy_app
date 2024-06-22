import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFC2C2C2)),
      ),
      child: const Column(
        children: [
          Icon(
            Icons.check_circle,
            size: 100,
            color: Color(0xFF6A1B9A),
          ),
          SizedBox(height: 20),
          Text(
            'تم تسجيل طلبك',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF2A2B3F),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Text(
            'سيتم مراجعة طلبك باقصى وقت ممكن من قبل المعنيين',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 12,
              color: Color(0xFF2A2B3F),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            'Fri, October 4, 6:00 PM',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF2A2B3F),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
