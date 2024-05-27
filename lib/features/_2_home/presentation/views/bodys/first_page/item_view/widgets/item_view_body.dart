import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Location.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Push_Mony.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Call_With_User.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Chose_Images_Or_description_Or_Similar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Servicess.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Specifications.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Specification_Section.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_numbeer_telefone.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_item_image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_row_text.dart';

class ItemViewBody extends StatelessWidget {
  const ItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomItemImage(),
          Gap(15),
          Column(children: [
            CustomRowText(),
            Text("حي الملك سلمان _ الرياض "),
            Gap(15),
            CustomRowChoseImagesOrdescriptionOrSimilar(),
            Gap(20),
            CustomRowSpecifications(),
            Text('المالك'),
            Customnumbeertelefone(),
            Text('المرافق'),
            CustomRowServicess(),
            Text('طرق الدفع :'),
            CustomPushMony(),
            Text('العنوان'),
            Divider(),
            CustomLocation(),
            Divider(),
            CustomRowCallWithUser()
          ]),
        ],
      ),
    );
  }
}
