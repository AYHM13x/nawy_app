import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utlis/assets/app_images.dart';

class ProfileImageBubbleChat extends StatelessWidget {
  const ProfileImageBubbleChat({super.key, required this.isSender});
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(isSender
              ? AppImages.accountImageProfile
              : AppImages.resiverImageProfile),
        ),
      ),
    );
  }
}
