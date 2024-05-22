import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/generated/l10n.dart';

import '../appbars/filter_view_appbar.dart';
import '../widgets/bathroom_number_section/bathrooms_number_section_filter_view.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/range_slider_section_filter_view.dart';
import '../widgets/rooms_number_section/rooms_number_section_filter_view.dart';
import '../widgets/space_section/space_section_filter_view.dart';
import '../widgets/types_estate_section/types_estate_section_filter_view.dart';

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TypesEstateSectionFilterView(),
                  const Gap(40),
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
                    text: S.of(context).search,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
