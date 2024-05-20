import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/splash_view.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_uo.dart';

class customRowtextlogin extends StatelessWidget {
  const customRowtextlogin({
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
