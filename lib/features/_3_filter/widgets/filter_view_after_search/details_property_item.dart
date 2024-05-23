import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'first_section_details_property.dart';
import 'second_section_details_property.dart';
import 'third_section_details_property.dart';

class DetailsPropertyItem extends StatelessWidget {
  const DetailsPropertyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 235,
      child: Column(
        children: [
          Gap(12),
          FirstSectionDetailsProperty(),
          Gap(8),
          SecondSectionDetailsProperty(),
          Gap(3),
          ThirdSectionDetailsProperty(),
        ],
      ),
    );
  }
}
