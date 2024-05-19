import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/generated/l10n.dart';

import '../../../../../core/utlis/assets/app_images.dart';

class CustomMarkerView extends StatelessWidget {
  const CustomMarkerView({
    super.key,
    this.price = 100000,
  });
  final num price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          AppImages.markerImage,
          fit: BoxFit.fill,
        ),
        Positioned(
          left: 33,
          child: Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.redColor,
            ),
            alignment: Alignment.center,
            child: Text(
              "$price ${S.of(context).dollar}",
              style: FontStyles.textStyle18Reg.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


//  ${S.of(context).dollar}