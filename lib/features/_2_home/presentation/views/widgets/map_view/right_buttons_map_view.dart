import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/dimensions_of_screen.dart';
import 'right_button_item_view.dart';

class RightButtonsMapView extends StatelessWidget {
  const RightButtonsMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 70).h,
      child: Column(
        children: [
          // Gap(390),
          const Expanded(
            flex: 6,
            child: SizedBox(),
          ),
          const RightButtonItemView(icon: AppImages.mapLayersIcon),
          Gap(3.h),
          const RightButtonItemView(icon: AppImages.gpsIcon),
          const Expanded(
            flex: 3,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
