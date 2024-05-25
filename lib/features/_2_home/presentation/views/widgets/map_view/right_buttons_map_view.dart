import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utlis/assets/app_images.dart';
import '../../../../../../core/utlis/dimensions_of_screen.dart';
import 'right_button_item_view.dart';

class RightButtonsMapView extends StatelessWidget {
  const RightButtonsMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 70),
      child: const Column(
        children: [
          // Gap(390),
          Expanded(
            flex: 6,
            child: SizedBox(),
          ),
          RightButtonItemView(icon: AppImages.mapLayersIcon),
          Gap(3),
          RightButtonItemView(icon: AppImages.gpsIcon),
          Expanded(
            flex: 3,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
