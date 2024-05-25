import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/widgets/Custom%D9%8C_Row_Pecifications.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/widgets/custom_Row_item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/widgets/custom_row_street.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  const customRowitem(),
                  const customRowStreet(),
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
                  Customspecifications()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
