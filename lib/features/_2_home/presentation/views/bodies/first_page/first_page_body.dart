import 'package:flutter/material.dart';

import '../../../../../../core/utlis/assets/font_styles.dart';
import '../../widgets/main_view/Custom_Influencers.dart';
import '../../widgets/main_view/Custom_List_View_Item.dart';
import '../../widgets/main_view/custom_chose_bottom.dart';
import '../../widgets/main_view/custom_head.dart';
import '../../widgets/main_view/custom_places.dart';
import '../../widgets/main_view/custom_searsh.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomHead(),
          SizedBox(
            height: 10,
          ),
          customSearsh(),
          SizedBox(
            height: 10,
          ),
          customchosebotton(),
          CustomListViewItem(),
          SizedBox(
            height: 20,
          ),
          Text(
            "اهم الاماكن :",
            style: FontStyles.textStyle16Bold,
          ),
          SizedBox(
            height: 20,
          ),
          CustomPlaces(),
          SizedBox(
            height: 20,
          ),
          Text(
            "اهم المؤثرين :",
            style: FontStyles.textStyle16Bold,
          ),
          SizedBox(
            height: 20,
          ),
          CustomInfluencers(),
          SizedBox(
            height: 20,
          ),
          Text(
            "اهم العقارات القريبة :",
            style: FontStyles.textStyle16Bold,
          ),
          SizedBox(
            height: 20,
          ),
          CustomListViewItem(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
