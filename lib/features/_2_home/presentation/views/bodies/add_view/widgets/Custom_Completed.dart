import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

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

class ContinerSlid extends StatelessWidget {
  const ContinerSlid({super.key, required this.opacity});
  final double opacity;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        color: AppColors.lightBlueColor,
        width: 60,
        height: 5,
      ),
    );
  }
}
