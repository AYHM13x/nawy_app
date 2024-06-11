import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

import 'widget/card_order.dart';
import 'widget/chat_section.dart';
import 'widget/next_btn.dart';

class BookTourScreen extends StatelessWidget {
  const BookTourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pickColor,
        centerTitle: true,
        title: const Text(
          'طلب رحلة',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ContentBox(),
                  ChatSection(),
                  SizedBox(height: 20),
                  NextButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
