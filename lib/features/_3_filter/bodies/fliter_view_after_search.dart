import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';
import 'package:nawy_app/features/_3_filter/widgets/filter_view_after_search/image_preperty_item.dart';

import '../widgets/filter_view_after_search/details_property_item.dart';

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
              padding: const EdgeInsets.only(
                bottom: 17,
              ),
              child: Container(
                width: 353,
                height: 111,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DetailsPropertyItem(),
                    Gap(10),
                    ImagePrepertyItem(),
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
