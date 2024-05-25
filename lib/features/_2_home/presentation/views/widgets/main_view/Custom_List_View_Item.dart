import 'package:flutter/material.dart';

import '../../../../../../core/utlis/assets/font_styles.dart';
import 'custom_row_pecifications.dart';
import 'custom_Row_item.dart';
import 'custom_row_street.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 268,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
                  Image.asset(
                      "assets/images/dillon-kydd-XGvwt544g8k-unsplash 1.png"),
                  const CustomRowitem(),
                  const CustomRowStreet(),
                  const Text(
                    "انقر لعرض التفاصيل0",
                    style: FontStyles.textStyle9Reg,
                  ),
                  const Divider(
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    height: 20,
                  ),
                  const Customspecifications()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
