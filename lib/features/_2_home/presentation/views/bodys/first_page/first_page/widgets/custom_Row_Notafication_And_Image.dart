import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

class customRowNotaficationAndImage extends StatelessWidget {
  const customRowNotaficationAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white)),
            onPressed: () {},
            icon: const Icon(Icons.notifications)),
        const CircleAvatar(
          backgroundImage: AssetImage(AppImages.profileheade),
          radius: 25,
        )
      ],
    );
  }
}
