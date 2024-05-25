import 'package:flutter/material.dart';
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
    return const Stack(
      children: [
        MapView(),
        Column(
          children: [
            CustomEnabledSearchBarView(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(31),
                RightButtonsMapView(),
                Expanded(child: SizedBox()),
                LeftButtonsMapView(),
                Gap(21),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
