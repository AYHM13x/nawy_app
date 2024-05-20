import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utlis/assets/app_images.dart';
import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../core/utlis/dimensions_of_screen.dart';
import '../../../../../generated/l10n.dart';
import 'left_button_item_view.dart';

class LeftButtonsMapView extends StatelessWidget {
  const LeftButtonsMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 70),
      child: Column(
        children: [
          // const Gap(430),
          const Expanded(
            flex: 9,
            child: SizedBox(),
          ),
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
          const Gap(7),
          LeftButtonItemView(
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImages.listIcon,
                  height: 20,
                  width: 20,
                ),
                Text(
                  S.of(context).list,
                  textAlign: TextAlign.center,
                  style: FontStyles.textStyle14Reg.copyWith(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
