import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets/app_colors.dart';
import '../widgets/custom_search_bar_view.dart';
import '../widgets/map_view.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/search_bar_item_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
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
