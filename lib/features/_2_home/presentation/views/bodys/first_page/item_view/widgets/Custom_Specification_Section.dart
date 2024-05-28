import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Specifications.dart';

class CustomSpecificationSection extends StatelessWidget {
  const CustomSpecificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomRowSpecifications()],
    );
  }
}
