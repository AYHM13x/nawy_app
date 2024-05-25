import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/Finish_add_view.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Continer_Slid.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Completed.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Completed_Three.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_app_bar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_add_omage.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

class AddImagesBody extends StatelessWidget {
  const AddImagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarAddView(),
        Gap(29),
        CustomCompletedThree(),
        CustomAddImage(),
        Expanded(child: SizedBox()),
        CustomElevatedBotton(
          AppColors.yellowColor,
          data: "التالي",
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FinishMap(),
                ));
          },
          backgroundtext: Colors.white,
        )
      ],
    );
  }
}
