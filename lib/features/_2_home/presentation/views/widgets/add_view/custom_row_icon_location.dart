import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowIconLocation extends StatelessWidget {
  const CustomRowIconLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xffF5F4F8),
                borderRadius: BorderRadius.circular(25)),
            child: const Icon(
              Icons.picture_in_picture_alt,
            )),
        Text(
          "قم بتحديد موقع العقار المراد بيعه/اجاره على الخريطة\n لتتمكن من عرضه للمهتمين  ",
          style: FontStyles.textStyle14Reg,
        ),
      ],
    );
  }
}
