import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class customRowStreet extends StatelessWidget {
  const customRowStreet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.location_off),
        Text(
          "الرياض-شارع الملك سلمان",
          style: FontStyles.textStyle9Reg,
        )
      ],
    );
  }
}
