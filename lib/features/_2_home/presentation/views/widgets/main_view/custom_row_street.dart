import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowStreet extends StatelessWidget {
  const CustomRowStreet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
