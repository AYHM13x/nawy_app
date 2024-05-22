import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../core/utlis/assets/app_colors.dart';
import '../../../core/utlis/assets/font_styles.dart';
import '../../../generated/l10n.dart';

class RangeSliderSectionFilterView extends StatefulWidget {
  const RangeSliderSectionFilterView({
    super.key,
  });

  @override
  State<RangeSliderSectionFilterView> createState() =>
      _RangeSliderSectionFilterViewState();
}

class _RangeSliderSectionFilterViewState
    extends State<RangeSliderSectionFilterView> {
  SfRangeValues _values = const SfRangeValues(
    1000.0,
    3000.0,
  );
  List<double> labels = [
    100,
    1000,
    2000,
    3000,
    4000,
    5000,
  ];
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
        const Gap(12),
        SfRangeSlider(
          min: 100,
          max: 5000.0,
          values: _values,
          interval: 100,
          showTicks: false,
          showLabels: true,
          enableTooltip: true,
          tooltipShape: const SfPaddleTooltipShape(),
          edgeLabelPlacement: EdgeLabelPlacement.auto,
          labelFormatterCallback: (actualValue, formattedText) {
            return labels.contains(actualValue) ? "\$$formattedText" : "";
          },
          stepSize: 500,
          activeColor: AppColors.darkPinkColor,
          inactiveColor: const Color(0xffE2EBFF),
          onChanged: (SfRangeValues values) {
            setState(() {
              _values = values;
            });
          },
        ),
      ],
    );
  }
}
