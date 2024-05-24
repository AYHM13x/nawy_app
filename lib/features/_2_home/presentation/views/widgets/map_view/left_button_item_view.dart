import 'package:flutter/material.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';

class LeftButtonItemView extends StatelessWidget {
  const LeftButtonItemView({
    super.key,
    required this.child,
    this.onPressed,
  });
  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 51,
      height: 51,
      child: TextButton(
        clipBehavior: Clip.hardEdge,
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(AppColors.lightYellowColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.goldColor, // your color here
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
