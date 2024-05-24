import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../../core/utlis/widgets/custom_elevated_botton.dart';
import '../../appbars/add_view/custom_app_bar.dart';
import '../../widgets/add_view/custom_completed.dart';
import '../../widgets/add_view/custom_property_type.dart';
import '../../widgets/add_view/custom_sale_and_rent.dart';
import '../../widgets/add_view/add_map_view.dart';

class AddBodyView extends StatelessWidget {
  const AddBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarAddView(),
        const Gap(29),
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
        const Expanded(child: SizedBox()),
        CustomElevatedBotton(
          AppColors.yellowColor,
          data: "التالي",
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddMapView(),
                ));
          },
          backgroundtext: Colors.white,
        )
      ],
    );
  }
}
