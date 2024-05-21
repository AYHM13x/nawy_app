import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/first_page/widgets/custom_head.dart';

class FirstPagebody extends StatelessWidget {
  const FirstPagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomHead()],
    );
  }
}
