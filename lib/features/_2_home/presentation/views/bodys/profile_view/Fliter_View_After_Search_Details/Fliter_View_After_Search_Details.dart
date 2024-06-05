import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/widgets/Fliter_View_After_Search_Details_Body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Custom_Row_Drawer.dart';
import 'package:nawy_app/features/_3_filter/widgets/filter_view_after_search/details_property_item.dart';
import 'package:nawy_app/features/_3_filter/widgets/filter_view_after_search/image_preperty_item.dart';

class FliterViewAfterSearchDetails extends StatelessWidget {
  const FliterViewAfterSearchDetails({super.key});

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
        body: FliterViewAfterSearchDetailsBody());
  }
}
