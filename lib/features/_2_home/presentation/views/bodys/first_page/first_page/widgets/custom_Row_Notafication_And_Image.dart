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
                backgroundColor: MaterialStatePropertyAll(Colors.white)),
            onPressed: () {},
            icon: Icon(Icons.notifications)),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/profileheade.svg"),
          radius: 25,
        )
      ],
    );
  }
}
