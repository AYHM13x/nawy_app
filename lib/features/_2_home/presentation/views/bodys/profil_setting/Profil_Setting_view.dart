import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profil_setting/Profil_Setting.body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Row_Drawer.dart';

class ProfilSetting extends StatelessWidget {
  const ProfilSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ProfilSettingBody(),
    );
  }
}
