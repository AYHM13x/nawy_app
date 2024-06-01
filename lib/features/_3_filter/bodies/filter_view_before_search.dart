import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        Gap(40.h),
        const RoomsNumberSectionFilterView(),
        Gap(40.h),
        const SpaceSectionFilterView(),
        Gap(40.h),
        const BathroomsNumberSectionFilterView(),
        Gap(48.h),
        CustomTextButton(
          width: 200.w,
          height: 60.h,
          radius: 55,
          text: S.of(context).search,
          color: AppColors.goldColor,
        )
      ],
    );
  }
}
