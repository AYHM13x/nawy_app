import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/generated/l10n.dart';

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
        Column(
          children: [
            CustomSearchBarView(),
            LeftButtonsView(),
          ],
        ),
      ],
    );
  }
}

class LeftButtonsView extends StatelessWidget {
  const LeftButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LeftButtonItemView(
          child: Text(
            S.of(context).searchEstate,
            textAlign: TextAlign.center,
            style: FontStyles.textStyle14Reg.copyWith(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class LeftButtonItemView extends StatelessWidget {
  const LeftButtonItemView({
    super.key,
    required this.child,
    this.onPressed,
  });
  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 49,
      height: 47,
      child: TextButton(
        clipBehavior: Clip.hardEdge,
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(AppColors.lightYellowColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.goldColor, // your color here
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
