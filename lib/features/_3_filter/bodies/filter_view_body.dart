import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../core/utlis/assets/font_styles.dart';
import '../../../generated/l10n.dart';
import '../appbars/filter_view_appbar.dart';
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

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({
    super.key,
  });

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues selectedValues = const RangeValues(100, 5000);
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: selectedValues,
      onChanged: (RangeValues value) {
        setState(() {
          selectedValues = value;
        });
      },
      min: 100.0,
      max: 5000.0,
      divisions: 6,
      // labels:
      //     RangeLabels("\$${selectedValues.end}", "\$${selectedValues.start}"),
      activeColor: AppColors.darkPinkColor,
      inactiveColor: const Color(0xffE2EBFF),
    );
  }
}





// SfSlider(
//       value: selectedValues,
//       // min: 100,
//       // max: 5000,
//       interval: 100,
//       showDividers: true,
//       showLabels: true,
//       // showTicks: true,
//       onChanged: (valuee) {
//         setState(() {
//           selectedValues = valuee;
//         });
//       },
//     );