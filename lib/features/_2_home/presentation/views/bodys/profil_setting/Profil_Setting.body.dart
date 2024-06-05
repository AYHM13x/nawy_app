import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/widgets/custom_row_elevated.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profil_setting/Custom_Change_Map.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profil_setting/Custom_Row_Elevated_Aplee_And_Google.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profil_setting/Custom_Row_Setting.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profil_setting/Profil_Setting_view.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/profile_view.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Image_Profil.dart';

class ProfilSettingBody extends StatelessWidget {
  const ProfilSettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomImageProfil(),
        Gap(62.h),
        const CustomRowSetting(),
        Gap(41.h),
        const CustomRowElevatedApleeAndGoogle(),
        const Expanded(flex: 3, child: SizedBox()),
        const CustomChangeMap(),
        const Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
