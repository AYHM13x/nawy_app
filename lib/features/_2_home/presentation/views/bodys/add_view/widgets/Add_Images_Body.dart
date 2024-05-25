import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Continer_Slid.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Completed.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Completed_Three.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_app_bar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_add_omage.dart';

class AddImagesBody extends StatelessWidget {
  const AddImagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBarAddView(),
          Gap(29),
          CustomCompletedThree(),
          CustomAddImage()
        ],
      ),
    );
  }
}
