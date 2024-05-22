import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../core/utlis/assets/app_colors.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({
    super.key,
  });

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  SfRangeValues _values = const SfRangeValues(100.0, 2000.0);
  @override
  Widget build(BuildContext context) {
    return SfRangeSlider(
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
        List<double> labels = [
          100,
          1000,
          2000,
          3000,
          4000,
          5000,
        ];
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
    );
  }
}
