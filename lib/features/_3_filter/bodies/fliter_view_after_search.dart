import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../widgets/filter_view_after_search/details_property_item.dart';
import '../widgets/filter_view_after_search/image_preperty_item.dart';

class FliterViewAfterSearch extends StatelessWidget {
  const FliterViewAfterSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: DimensionsOfScreen.dimensionsOfHeight(context, 80),
      child: ListView.builder(
        itemCount: 40,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Material(
            elevation: 10,
            // borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 17.h,
              ),
              child: Container(
                width: 353.w,
                height: 111.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
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
        },
      ),
    );
  }
}
