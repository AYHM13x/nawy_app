import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Continer_Slid.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_Completed.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_Completed_Three.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_app_bar.dart';

class AddImagesBody extends StatelessWidget {
  const AddImagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBarAddView(),
          Gap(29),
          const CustomCompletedThree(),
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
    return Container(
        height: 78,
        width: 78,
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
