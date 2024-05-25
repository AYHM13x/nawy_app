import 'package:flutter/material.dart';

import '../../../../../../core/utlis/assets/font_styles.dart';

class Customspecifications extends StatelessWidget {
  const Customspecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowWidgetItem(
          data: "5x7 m²",
          icon: Icons.square,
        ),
        RowWidgetItem(
          data: "2 حمام",
          icon: Icons.bathroom,
        ),
        RowWidgetItem(
          data: "3 غرف",
          icon: Icons.bed,
        ),
      ],
    );
  }
}

class RowWidgetItem extends StatelessWidget {
  const RowWidgetItem({super.key, required this.data, required this.icon});
  final String data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          data,
          style: FontStyles.textStyle14Reg,
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          height: 12,
          width: 12,
          child: Icon(
            icon,
            color: Colors.amber,
          ),
        )
      ],
    );
  }
}
