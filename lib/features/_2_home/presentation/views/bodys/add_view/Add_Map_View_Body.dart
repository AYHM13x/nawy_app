import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/Add_Images_View.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Add_Map_View.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Continer_Slid.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Completed.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Completed_Tow.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Map_Chose.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_RowIcon_Location.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_app_bar.dart';

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
          CustomMapChoose(),
          const Gap(60),
          CustomElevatedBotton(
            AppColors.yellowColor,
            data: "التالي",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddImagesView(),
                  ));
            },
            backgroundtext: Colors.white,
          )
        ],
      ),
    );
  }
}
