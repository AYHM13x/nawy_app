import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom_Influencers.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom_List_View_Item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_chose_bottom.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_head.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_places.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_searsh.dart';

import 'package:nawy_app/features/_3_filter/bodies/filter_view_body.dart';
import 'package:nawy_app/features/_3_filter/filter_view.dart';

import '../../../../../../../core/utlis/assets/app_images.dart';

class FirstPagebody extends StatelessWidget {
  const FirstPagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomHead(),
          const SizedBox(
            height: 10,
          ),
          const customSearsh(),
          const SizedBox(
            height: 10,
          ),
          const Customchosebotton(),
          Column(
            children: [
              Text(
                "الأكثر شيوعا :",
                style: FontStyles.textStyle16Bold,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomPlaces(
                name: AppImages.rowPlace,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomListViewItem(
                name: AppImages.dillon,
              ),
            ],
          )
        ],
      ),
    );
  }
}
 
// القسم الاول 
  // Column(
  //           children: [
  //             CustomListViewItem(),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Text(
  //               "اهم الاماكن :",
  //               style: FontStyles.textStyle16Bold,
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
      //         CustomPlaces(name: AppImages.rowPlace,),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Text(
  //               "اهم المؤثرين :",
  //               style: FontStyles.textStyle16Bold,
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             CustomInfluencers(),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Text(
  //               "اهم العقارات القريبة :",
  //               style: FontStyles.textStyle16Bold,
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             CustomListViewItem(name: AppImages.dillon,),
  //             SizedBox(
  //               height: 20,
  //             ),
  //           ],
  //         )
        