import 'package:flutter/material.dart';

import 'card_data.dart';

class InfoCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InfoCard(
            title: 'اجمالي العمولة',
            amount: '\$45.90',
            percentage: '+20% بالنسبة للشهر الماضي',
          ),
          InfoCard(
            title: 'اجمالي الارباح',
            amount: '\$45.90',
            percentage: '+20% بالنسبة للشهر الماضي',
          ),
          InfoCard(
            title: 'اجمالي التحويلات',
            amount: '\$45.90',
            percentage: '+20% بالنسبة للشهر الماضي',
          ),
        ],
      ),
    );
  }
}
