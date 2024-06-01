import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../generated/l10n.dart';
import 'bathroom_item_filter_view.dart';

class BathroomsNumberSectionFilterView extends StatelessWidget {
  const BathroomsNumberSectionFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).priceRange,
          style: FontStyles.textStyle14Reg.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Gap(12.h),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BathroomItemFilterView(text: "1+"),
            BathroomItemFilterView(text: "2+"),
            BathroomItemFilterView(text: "4+"),
            BathroomItemFilterView(text: "5+"),
            BathroomItemFilterView(text: "7"),
          ],
        )
      ],
    );
  }
}
