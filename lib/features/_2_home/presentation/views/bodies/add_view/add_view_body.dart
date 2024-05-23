import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/appbars/coustom_app_bar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_Completed.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_Property_type.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_Sale_And_Rent.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_app_bar.dart';

class AddBodyView extends StatelessWidget {
  const AddBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarAddView(),
        const CustomCompleted(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "مرحبا محمد, قم بملئ تفاصيل عقارك",
          style: FontStyles.textStyle18Reg,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "نوع العرض :",
          style:
              FontStyles.textStyle14Reg.copyWith(fontWeight: FontWeight.w700),
        ),
        const CustomSaleAndRent(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "نوع العرض :",
          style:
              FontStyles.textStyle14Reg.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomPropertytype(),
      ],
    );
  }
}