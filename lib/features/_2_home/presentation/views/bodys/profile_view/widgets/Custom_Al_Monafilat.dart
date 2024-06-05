import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Fliter_View_After_Search_Details/Fliter_View_After_Search_Details.dart';
import 'package:nawy_app/features/_3_filter/bodies/fliter_view_after_search.dart';

class CustomAlMonafilat extends StatelessWidget {
  const CustomAlMonafilat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/pngs/Layout.png"),
            Text(
              "مناقلات 2",
              style: FontStyles.textStyle14Reg,
            ),
          ],
        ),
        Container(
            width: double.infinity,
            height: 300,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const FliterViewAfterSearchDetails(),
                      ));
                },
                child: const FliterViewAfterSearch())),
      ],
    );
  }
}
