import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/chat_view/chat_view_body.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatViewBody(),
            ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ابدأ المحادثة مع صاحب العقار',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 13,
                color: Color(0xFF2A2B3F),
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(AppImages.resiverImageProfile),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'محمد خليل',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Color(0xFF2A2B3F),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'المالك',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 11,
                        color: Color(0xFF8C8C8C),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
