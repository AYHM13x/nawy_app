import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Chose_Images_Or_description_Or_Similar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_item_image.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_row_text.dart';

class ItemViewBody extends StatelessWidget {
  const ItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomItemImage(),
        Gap(15),
        Column(
          children: [
            CustomRowText(),
            Text("حي الملك سلمان _ الرياض "),
            Gap(15),
            CustomRowChoseImagesOrdescriptionOrSimilar()
          ],
        ),
      ],
    );
  }
}
