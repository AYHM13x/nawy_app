import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

import '../../../generated/l10n.dart';
import '../widgets/filter_view_before_search/bathroom_number_section/bathrooms_number_section_filter_view.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/filter_view_before_search/range_slider_section_filter_view.dart';
import '../widgets/filter_view_before_search/rooms_number_section/rooms_number_section_filter_view.dart';
import '../widgets/filter_view_before_search/space_section/space_section_filter_view.dart';

class FilterViewBeforeSearch extends StatelessWidget {
  const FilterViewBeforeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RangeSliderSectionFilterView(),
        const Gap(40),
        const RoomsNumberSectionFilterView(),
        const Gap(40),
        const SpaceSectionFilterView(),
        const Gap(40),
        const BathroomsNumberSectionFilterView(),
        const Gap(48),
        CustomTextButton(
          width: 200,
          height: 60,
          radius: 55,
          text: S.of(context).search,
          color: AppColors.goldColor,
        )
      ],
    );
  }
}
