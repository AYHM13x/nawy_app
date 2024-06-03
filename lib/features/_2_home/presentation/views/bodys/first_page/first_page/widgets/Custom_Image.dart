import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/profile_view.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileView(),
            ));
      },
      child: CircleAvatar(
        backgroundImage: AssetImage(AppImages.profileheade),
        radius: 25.r,
      ),
    );
  }
}
