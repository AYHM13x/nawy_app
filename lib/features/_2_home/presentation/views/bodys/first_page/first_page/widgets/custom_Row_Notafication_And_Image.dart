import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

class customRowNotaficationAndImage extends StatelessWidget {
  const customRowNotaficationAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));

    return Row(
      children: [
        IconButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white)),
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: ScreenUtil().setHeight(30),
            )),
        CircleAvatar(
          backgroundImage: AssetImage(AppImages.profileheade),
          radius: ScreenUtil().setHeight(25),
        )
      ],
    );
  }
}
