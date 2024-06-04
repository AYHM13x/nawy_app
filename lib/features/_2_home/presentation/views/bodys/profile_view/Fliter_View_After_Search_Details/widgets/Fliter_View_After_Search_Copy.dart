import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_3_filter/widgets/filter_view_after_search/details_property_item.dart';
import 'package:nawy_app/features/_3_filter/widgets/filter_view_after_search/image_preperty_item.dart';

class FliterViewAfterSearchCopy extends StatelessWidget {
  const FliterViewAfterSearchCopy({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 17.h,
        ),
        child: Container(
          width: double.infinity,
          height: 111.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const DetailsPropertyItem(),
              Gap(10.w),
              const ImagePrepertyItem(),
            ],
          ),
        ),
      ),
    );
  }
}
