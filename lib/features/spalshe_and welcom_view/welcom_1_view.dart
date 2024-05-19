import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/spalshe_view.dart';

class WelcomOneView extends StatelessWidget {
  const WelcomOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [coustomAppar()],
        ),
      ),
    );
  }
}

class coustomAppar extends StatelessWidget {
  const coustomAppar({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplaseView()),
              );
            },
            icon: Icon(Icons.arrow_back)),
        SvgPicture.asset(
          AppImages.splashLogo2Image,
        )
      ],
    );
  }
}
