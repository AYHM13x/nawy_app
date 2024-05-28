import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

class ContinerSpecifications extends StatelessWidget {
  const ContinerSpecifications(
      {super.key, required this.icon, required this.data, required this.mony});
  final IconData icon;
  final String mony;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 88,
      color: Colors.white,
      child: Column(
        children: [
          Icon(
            icon,
            color: AppColors.pickColor,
          ),
          Text(
            mony,
            style: TextStyle(
              color: AppColors.pickColor,
            ),
          ),
          Text(
            data,
          ),
        ],
      ),
    );
  }
}
