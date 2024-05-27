import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/dimensions_of_screen.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Grid_View_Build.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Location.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Push_Mony.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Call_With_User.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Chose_Images_Or_description_Or_Similar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Servicess.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Specifications.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Specification_Section.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Vedio_Grid_View_Build.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_lenth_Image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_numbeer_telefone.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_item_image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_row_text.dart';
import 'package:nawy_app/features/_3_filter/bodies/filter_view_body.dart';
import 'package:nawy_app/features/_3_filter/bodies/fliter_view_after_search.dart';
import 'package:nawy_app/features/_3_filter/widgets/filter_view_before_search/types_property_section/types_property_section_filter_view.dart';

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
                  width: 400,
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
//               CustomVedioGridViewBuild()
//             ],
//           )