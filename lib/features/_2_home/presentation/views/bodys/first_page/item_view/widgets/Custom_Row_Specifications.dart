import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Continer_Specifications.dart';

class CustomRowSpecifications extends StatelessWidget {
  const CustomRowSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: ContinerSpecifications(
          data: "مساحة",
          icon: Icons.check_box_outline_blank,
          mony: '1000',
        ),
      ),
      Expanded(
        child: ContinerSpecifications(
          data: "غرف",
          icon: Icons.bed,
          mony: '3',
        ),
      ),
      Expanded(
        child: ContinerSpecifications(
          data: "حمامات",
          icon: Icons.bathroom,
          mony: '1',
        ),
      ),
      Expanded(
        child: ContinerSpecifications(
          data: "مصف سيارات",
          icon: Icons.check_box_outline_blank,
          mony: '4000',
        ),
      ),
    ]);
  }
}
