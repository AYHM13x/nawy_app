import 'package:flutter/material.dart';

import '../../../../../../core/utlis/assets/app_images.dart';

class ProfileImageBubbleChat extends StatelessWidget {
  const ProfileImageBubbleChat({super.key, required this.isSender});
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
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
