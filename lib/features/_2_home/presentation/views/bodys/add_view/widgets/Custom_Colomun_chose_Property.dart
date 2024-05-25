import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_row_property.dart';

class CustomColomunchoseProperty extends StatelessWidget {
  const CustomColomunchoseProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("ميزات العقار"),
        CustomRowProperty(
          data: "غرف نوم",
        ),
        Gap(15),
        CustomRowProperty(
          data: "غرف نوم",
        ),
        Gap(15),
        CustomRowProperty(
          data: "غرف نوم",
        ),
      ],
    );
  }
}
