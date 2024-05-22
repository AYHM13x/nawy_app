import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';
import 'package:nawy_app/features/_3_filter/bodies/filter_view_before_search.dart';
import 'package:nawy_app/features/_3_filter/widgets/custom_text_button.dart';
import 'package:nawy_app/generated/l10n.dart';

import '../appbars/filter_view_appbar.dart';
import '../widgets/filter_view_before_search/types_property_section/types_property_section_filter_view.dart';
import 'fliter_view_after_search.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FilterViewAppBar(),
        const Gap(7),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 29,
          ),
          child: TypesPropertySectionFilterView(),
        ),
        const Gap(20),
        SizedBox(
          height: DimensionsOfScreen.dimensionsOfHeight(context, 68),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 29,
            ),
            child: CustomScrollView(
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
