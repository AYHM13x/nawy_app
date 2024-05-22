import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

class ImagePrepertyItem extends StatelessWidget {
  const ImagePrepertyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        AppImages.propertyImage,
        height: 89.0,
        width: 89.0,
      ),
    );
  }
}
