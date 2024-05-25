import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';

class CustomRowDivider extends StatelessWidget {
  const CustomRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: DimensionsOfScreen.dimensionsOfWidth(context, 40),
          child: const Divider(),
        ),
        const Text("او"),
        SizedBox(
          width: DimensionsOfScreen.dimensionsOfWidth(context, 40),
          child: const Divider(),
        ),
      ],
    );
  }
}
