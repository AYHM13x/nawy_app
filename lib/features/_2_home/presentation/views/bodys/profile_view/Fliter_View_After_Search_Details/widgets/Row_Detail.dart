import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class RowDetail extends StatelessWidget {
  const RowDetail({super.key, required this.data, required this.textdate});
  final String data;
  final String textdate;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textdate,
            style: FontStyles.textStyle12Reg,
          ),
          Text(
            data,
            style: FontStyles.textStyle12Reg,
          ),
        ],
      ),
    );
  }
}
