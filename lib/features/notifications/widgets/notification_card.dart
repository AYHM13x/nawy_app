import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  NotificationCard(
      {required this.name,
      required this.message,
      required this.time,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Color(0xFF252B5C),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Color(0xFF53587A),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.normal,
                    fontSize: 8,
                    color: Color(0xFFA1A5C1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
