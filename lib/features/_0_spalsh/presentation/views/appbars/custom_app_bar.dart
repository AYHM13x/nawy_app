import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

import '../splash_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppImages.splashLogo2Image,
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const SplashView()),
              );
            },
            icon: Transform.flip(
                flipX: true, child: const Icon(Icons.arrow_back))),
      ],
    );
  }
}
