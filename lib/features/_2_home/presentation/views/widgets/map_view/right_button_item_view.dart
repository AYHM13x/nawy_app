import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';

class RightButtonItemView extends StatelessWidget {
  const RightButtonItemView({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final String icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.backgroundGrayColor,
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}
