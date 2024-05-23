import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Continer_Slid.dart';

class CustomCompleted extends StatelessWidget {
  const CustomCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 335,
      height: 38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              ContinerSlid(
                opacity: .5,
              ),
              ContinerSlid(
                opacity: .5,
              ),
              ContinerSlid(
                opacity: .5,
              ),
              ContinerSlid(
                opacity: 1,
              ),
            ],
          ),
          SizedBox(height: 22, child: Text(" خطوة  ")),
          SizedBox(height: 22, child: Text(" 1/4  ")),
        ],
      ),
    );
  }
}
