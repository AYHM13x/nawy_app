import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../generated/l10n.dart';
import 'rooms_number_item_filter_view.dart';

class RoomsNumberSectionFilterView extends StatelessWidget {
  const RoomsNumberSectionFilterView({super.key});

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
            RoomsNumberItemFilterView(text: "1+"),
            RoomsNumberItemFilterView(text: "2+"),
            RoomsNumberItemFilterView(text: "4+"),
            RoomsNumberItemFilterView(text: "5+"),
            RoomsNumberItemFilterView(text: "7"),
          ],
        ),
      ],
    );
  }
}
