import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowElevatedApleeAndGoogle extends StatelessWidget {
  const CustomRowElevatedApleeAndGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 166,
          child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.googleIcon),
                  Text(
                    "Unlink",
                    style: FontStyles.textStyle12Reg,
                  ),
                ],
              )),
        ),
        Container(
          height: 60,
          width: 166,
          child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.appleIcon),
                  Text(
                    "Link",
                    style: FontStyles.textStyle12Reg,
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
