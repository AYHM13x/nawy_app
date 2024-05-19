import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/spalshe_view.dart';
import 'package:nawy_app/features/spalshe_and%20welcom_view/wodgets/coustom_app_bar.dart';

class WelcomOneView extends StatelessWidget {
  const WelcomOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              coustomAppar(),
            ],
          ),
        ),
      ),
    );
  }
}
