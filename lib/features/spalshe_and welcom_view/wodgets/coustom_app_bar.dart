import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/spalshe_view.dart';

class coustomAppar extends StatelessWidget {
  const coustomAppar({super.key});

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplaseView()),
              );
            },
            icon: Icon(Icons.arrow_back)),
      ],
    );
  }
}
