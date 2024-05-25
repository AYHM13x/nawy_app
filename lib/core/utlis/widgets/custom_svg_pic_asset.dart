import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgPicAsset extends StatelessWidget {
  const CustomSvgPicAsset({
    super.key,
    required this.image,
    required this.color,
  });
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }
}
