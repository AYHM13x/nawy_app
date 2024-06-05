import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Continer_Sale.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Al_Monafilat.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Image_Profil.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Row_Sale_And_Push.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/custom_row_elevated_sale.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(15.h),
            const CustomImageProfil(),
            Gap(10.h),
            Text(
              "محمد خليل",
              style: FontStyles.textStyle16Bold,
            ),
            Gap(10.h),
            Text(
              "5llo@email.com",
              style: FontStyles.textStyle9Reg,
            ),
            Gap(10.h),
            const CustomRowSaleAndPush(),
            Gap(10.h),
            const CustomRowElevatedSale(),
            Gap(10.h),
            CustomAlMonafilat()
          ],
        ),
      ),
    );
  }
}


//  قسم المنافلة 
//. CustomAlMonafilat()