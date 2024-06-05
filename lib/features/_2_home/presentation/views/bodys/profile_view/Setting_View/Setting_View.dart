import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Setting_View/widget/Setting_View_body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Row_Drawer.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: CustomRowDrawer()),
      appBar: AppBar(
        title: Center(
          child: Text(
            "الأعدادات",
            style: FontStyles.textStyle16Bold.copyWith(color: Colors.white),
          ),
        ),
        backgroundColor: AppColors.pickColor,
      ),
      body: const SettingViewbody(),
    );
  }
}
