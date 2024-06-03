import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom_Image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/profile_view.dart';

class customRowNotaficationAndImage extends StatelessWidget {
  const customRowNotaficationAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        IconButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white)),
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 30.h,
            )),
        Gap(10.w),
        CustomImage()
      ],
    );
  }
}
