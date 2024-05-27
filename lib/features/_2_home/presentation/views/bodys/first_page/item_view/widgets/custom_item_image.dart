import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom_List_View_Item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Icon_Bottom.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Sharing_And_Favorate.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/custom_list_view_item_detils.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

class CustomItemImage extends StatelessWidget {
  const CustomItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            color: Colors.amber,
            child: Image.asset("assets/images/pngs/unsplash_y3_AHHrxUBY.png")),
        const Positioned(top: 57, child: CustomRowSharingAndFavorate()),
        const Positioned(
            bottom: 14, left: 48, right: 48, child: CustomListViewItemdetils())
      ],
    );
  }
}
