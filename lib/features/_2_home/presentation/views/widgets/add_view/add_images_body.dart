import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utlis/assets/font_styles.dart';
import '../../appbars/add_view/custom_app_bar.dart';
import 'Custom_Completed_Three.dart';

class AddImagesBody extends StatelessWidget {
  const AddImagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBarAddView(),
          Gap(29),
          CustomCompletedThree(),
          Text(
            "اضافة صور توضيحية لعقارك",
            style: FontStyles.textStyle18Reg,
          ),
          CustomAddImage()
        ],
      ),
    );
  }
}

class CustomAddImage extends StatelessWidget {
  const CustomAddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 78,
        width: 78,
        child: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
