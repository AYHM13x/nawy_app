import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom%D9%8C_Row_Pecifications.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_Row_item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_row_street.dart';

class CustomInfluencers extends StatelessWidget {
  const CustomInfluencers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Image.asset(AppImages.rowPlace),

                const Text(
                  "نها احمد",
                  style: FontStyles.textStyle14Reg,
                ),
                // const Divider(
                //   endIndent: 100,
                //   indent: 100,
                //   thickness: 2,
                //   height: 20,
                // ),
                // Customspecifications()
              ],
            ),
          );
        },
      ),
    );
  }
}
