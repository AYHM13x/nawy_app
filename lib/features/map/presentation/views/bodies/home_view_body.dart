import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/map/presentation/views/widgets/search_bar_item_view.dart';

import '../widgets/map_view.dart';
import '../../../../../generated/l10n.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MapView(),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            right: 20,
            left: 20,
          ),
          child: Container(
            // width: 100,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // const Gap(16),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.blueColor,
                  ),
                ),
                SearchBarItemView(
                  title: S.of(context).all,
                ),
                SearchBarItemView(
                  title: S.of(context).houses,
                ),
                SearchBarItemView(
                  title: S.of(context).villas,
                ),
                SearchBarItemView(
                  title: S.of(context).apartments,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
