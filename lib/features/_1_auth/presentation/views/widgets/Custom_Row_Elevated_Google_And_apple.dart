import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

class CustomRowElevatedGoogleAndApple extends StatelessWidget {
  const CustomRowElevatedGoogleAndApple({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(55)),
              width: 100.w,
              height: 56.h,
              child: Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(AppImages.googleIcon)),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(55.r)),
              width: 100.w,
              height: 56.h,
              child: Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(AppImages.googleIcon)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
