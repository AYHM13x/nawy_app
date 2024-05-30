import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../../core/utlis/widgets/custom_elevated_botton.dart';
import '../../appbars/add_view/custom_app_bar.dart';
import 'add_images_view.dart';
import 'Custom_Completed_Tow.dart';
import 'custom_map_choose.dart';
import 'custom_row_icon_location.dart';

class AddMapViewBody extends StatelessWidget {
  const AddMapViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBarAddView(),
          const Gap(29),
          const CustomCompletedTow(),
          const Gap(11),
          Text(
            "حدد موقع العقار",
            style: FontStyles.textStyle18Reg,
          ),
          const Gap(32),
          const CustomRowIconLocation(),
          const Gap(24),
          const CustomMapChoose(),
          const Gap(60),
          CustomElevatedBotton(
            AppColors.yellowColor,
            data: "التالي",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddImagesView(),
                  ));
            },
            backgroundtext: Colors.white,
          )
        ],
      ),
    );
  }
}
