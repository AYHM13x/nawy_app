import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../appbars/map_view/custom_enabled_search_bar_view.dart';
import '../../widgets/map_view/left_buttons_map_view.dart';
import '../../widgets/map_view/map_view.dart';
import '../../widgets/map_view/right_buttons_map_view.dart';

class MapViewBody extends StatefulWidget {
  const MapViewBody({super.key});

  @override
  State<MapViewBody> createState() => _MapViewBodyState();
}

class _MapViewBodyState extends State<MapViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MapView(),
        Column(
          children: [
            const CustomEnabledSearchBarView(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(31.w),
                const RightButtonsMapView(),
                const Expanded(child: SizedBox()),
                const LeftButtonsMapView(),
                Gap(21.w),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
