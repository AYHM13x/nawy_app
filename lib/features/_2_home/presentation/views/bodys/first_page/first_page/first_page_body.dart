import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom_List_View_Item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_chose_bottom.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_head.dart';
import '../../../widgets/main_view/custom_chose_bottom.dart';

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
          Customchosebotton(),
          Column(
            children: [
              Text(
                "الأكثر شيوعا :",
                style: FontStyles.textStyle16Bold,
              ),
              SizedBox(
                height: 20,
              ),
              CustomPlaces(
                name: "assets/images/rowplaces.png",
              ),
              SizedBox(
                height: 20,
              ),
              CustomListViewItem(
                name: "assets/images/dillon-kydd-XGvwt544g8k-unsplash 1.png",
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
      //         CustomPlaces(name: "assets/images/rowplaces.png",),
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
  //             CustomListViewItem(name: "assets/images/dillon-kydd-XGvwt544g8k-unsplash 1.png",),
  //             SizedBox(
  //               height: 20,
  //             ),
  //           ],
  //         )
        