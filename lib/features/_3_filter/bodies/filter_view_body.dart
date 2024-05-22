import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utlis/assets/font_styles.dart';
import '../../../generated/l10n.dart';
import '../appbars/filter_view_appbar.dart';
import '../widgets/custom_range_slider.dart';
import '../widgets/types_estate_filter_view.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FilterViewAppBar(),
        const Gap(7),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 29,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).typeEstate,
                    style: FontStyles.textStyle14Reg.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Gap(12),
                  const TypesEstateFilterView(),
                  const Gap(40),
                  Text(
                    S.of(context).priceRange,
                    style: FontStyles.textStyle14Reg.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Gap(12),
                  const CustomRangeSlider(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
