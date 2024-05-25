import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets/font_styles.dart';

class CustomRowtextlogin extends StatelessWidget {
  const CustomRowtextlogin({
    super.key,
    required this.data,
    required this.datatext,
    required this.onTap,
  });
  final String data;
  final String datatext;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          data,
          style: FontStyles.textStyle14Reg,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(datatext,
              style: FontStyles.textStyle14Reg
                  .copyWith(decoration: TextDecoration.underline)),
        ),
      ],
    );
  }
}
