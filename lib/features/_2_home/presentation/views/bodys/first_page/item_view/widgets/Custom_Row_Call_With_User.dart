import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Add_Botton_sheet_Scusess.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Chose_Bottom_sheet_Push.dart';

class CustomRowCallWithUser extends StatelessWidget {
  const CustomRowCallWithUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomElevatedBotton(
            backgroundtext: Colors.white,
            AppColors.yellowColor,
            data: "تواصل معنا", onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const CustomChoseBottomsheetPush();
            },
          );
        }),
        Column(
          children: [Text("الاسعر النهائي"), Text("350\$/شهر")],
        )
      ],
    );
  }
}
