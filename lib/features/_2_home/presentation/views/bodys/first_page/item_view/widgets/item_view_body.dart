import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_item_image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_row_text.dart';
import 'package:nawy_app/features/_3_filter/bodies/fliter_view_after_search.dart';

import 'Custom_Row_Chose_Images_Or_description_Or_Similar.dart';

class ItemViewBody extends StatelessWidget {
  const ItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomItemImage(),
          Gap(15),
          CustomRowText(),
          Text("حي الملك سلمان _ الرياض "),
          Gap(15),
          CustomRowChoseImagesOrdescriptionOrSimilar(),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                SizedBox(
                  // width: double.maxFinite,
                  height: 500,
                  child: FliterViewAfterSearch(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




//القسم الخاص بالوصف
// Column(children: [ 
//             Gap(20),
//             CustomRowSpecifications(),
//             Text('المالك'),
//             Customnumbeertelefone(),
//             Text('المرافق'),
//             CustomRowServicess(),
//             Text('طرق الدفع :'),
//             CustomPushMony(),
//             Text('العنوان'),
//             Divider(),
//             CustomLocation(),
//             Divider(),
//             CustomRowCallWithUser()
//           ]),

//القسم الخاص بالصور
// Column(
//             children: [
//               CustomlenthImage(
//                 data: "صور",
//                 textNumbeer: "(6)",
//               ),
//               CustomVedioGridViewBuild(),
//               Divider(),
//               CustomlenthImage(
//                 data: "فديو",
//                 textNumbeer: "(6)",
//               ),
//               CustomVedioGridViewBuild()و
    //  CustomRowCallWithUser()
//             ],
//           )




//القسم الخاص بالمشابهة
//  Padding(
//             padding: EdgeInsets.only(right: 20, left: 20),
//             child: Column(
//               children: [
//                 SizedBox(
//                   width: 400,
//                   height: 500,
//                   child: FliterViewAfterSearch(),
//                 ),
//               ],
//             ),
//           ),