import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class customRowtextlogin extends StatelessWidget {
  const customRowtextlogin(
      {super.key, required this.data, required this.datatext});
  final String data;
  final String datatext;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          data,
          style: FontStyles.textStyle14Reg,
        ),
        InkWell(
          onTap: () {},
          child: Text(datatext,
              style: FontStyles.textStyle14Reg
                  .copyWith(decoration: TextDecoration.underline)),
        ),
      ],
    );
  }
}
