import 'package:flutter/material.dart';

import '../appbars/custom_search_bar_view.dart';
import '../widgets/map_view.dart';

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
        CustomSearchBarView(),
      ],
    );
  }
}
