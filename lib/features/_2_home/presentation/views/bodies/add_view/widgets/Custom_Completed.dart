import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

class CustomCompleted extends StatelessWidget {
  const CustomCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
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
          Container(height: 22, child: const Text(" خطوة  ")),
          Container(height: 22, child: const Text(" 1/4  ")),
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
        color: AppColors.BlouColor,
        width: 60,
        height: 5,
      ),
    );
  }
}
