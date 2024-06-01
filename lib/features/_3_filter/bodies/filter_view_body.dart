import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../core/utlis/dimensions_of_screen.dart';
import '../../../generated/l10n.dart';
import '../appbars/filter_view_appbar.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/filter_view_before_search/types_property_section/types_property_section_filter_view.dart';
import 'fliter_view_after_search.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FilterViewAppBar(),
        Gap(7.h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 29.w,
          ),
          child: const TypesPropertySectionFilterView(),
        ),
        Gap(20.h),
        SizedBox(
          height: DimensionsOfScreen.dimensionsOfHeight(context, 68).h,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 29.w,
            ),
            child: const CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: FliterViewAfterSearch(),
                ),
              ],
            ),
          ),
        ),
        const Gap(20),
        CustomTextButton(
          width: 200,
          height: 40,
          radius: 55,
          text: S.of(context).back,
          color: Colors.white,
        )
      ],
    );
  }
}
