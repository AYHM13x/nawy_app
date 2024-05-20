import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utlis/assets/app_images.dart';
import 'right_button_item_view.dart';

class RightButtonsMapView extends StatelessWidget {
  const RightButtonsMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Gap(390),
        RightButtonItemView(icon: AppImages.mapLayersIcon),
        Gap(3),
        RightButtonItemView(icon: AppImages.gpsIcon)
      ],
    );
  }
}
