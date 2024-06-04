import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Archives_View/widgets/Custom_Chose_Every_One_And_Sale.dart';

class ArchivesViewBody extends StatelessWidget {
  const ArchivesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(10.h),
        SingleChildScrollView(child: CustomChoseEveryOneAndSale())
      ],
    );
  }
}
