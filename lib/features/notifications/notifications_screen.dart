import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

import 'widgets/category.dart';
import 'widgets/header_text.dart';
import 'widgets/menu.dart';
import 'widgets/notification_card.dart';

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text(
          'الاشعارات',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Menu(),
            SizedBox(height: 20),
            Category(),
            SizedBox(height: 20),
            HeaderText('اليوم'),
            NotificationCard(
              name: "محمد خليل",
              message: "تم بيع عقارك بنجاح من قلب المشهور يحيى الماهر",
              time: "منذ 10 دقائق",
              imageUrl: AppImages.resiverImageProfile,
            ),
            NotificationCard(
              name: "علي علي",
              message: "تم تاجير عقارك بنجاح من قبل احمد السيد",
              time: "منذ 10 دقائق",
              imageUrl: AppImages.accountImageProfile,
            ),
            SizedBox(height: 20),
            HeaderText('اشعارات قديمة'),
            NotificationCard(
              name: "محمد خليل",
              message: "تم بيع عقارك بنجاح من قب احمد احمد",
              time: "منذ 10 دقائق",
              imageUrl: AppImages.resiverImageProfile,
            ),
            NotificationCard(
              name: "محمد خليل",
              message: "تم بيع عقارك بنجاح من قبل الما الما",
              time: "منذ 10 دقائق",
              imageUrl: AppImages.accountImageProfile,
            ),
          ],
        ),
      ),
    );
  }
}
