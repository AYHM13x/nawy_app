import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Row_Drawer.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Profile_View_Body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Row_Drawer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(child: CustomRowDrawer()),
        appBar: AppBar(
          title: Center(
            child: Text(
              "ملفي الشخصي ",
              style: FontStyles.textStyle16Bold.copyWith(color: Colors.white),
            ),
          ),
          backgroundColor: AppColors.pickColor,
        ),
        body: ProfileViewBody(),
      ),
    );
  }
}
