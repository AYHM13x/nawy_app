import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/appbars/custom_app_bar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/Finish_Pushe_View.dart';

class PushViewBody extends StatelessWidget {
  const PushViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(26),
          SvgPicture.asset(AppImages.pushimage),
          Gap(19),
          const Text(
            "قم بملئ البيانات المناسبة",
            style: FontStyles.textStyle18Reg,
          ),
          Gap(32),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffF5F4F8),
                borderRadius: BorderRadius.circular(10)),
            child: const CustomTextformfiled(
                hintText: "اضف الاسم",
                icon: Icons.person,
                keyboardType: TextInputType.text),
          ),
          Gap(24),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffF5F4F8),
                borderRadius: BorderRadius.circular(10)),
            child: const CustomTextformfiled(
                hintText: " رقم البطاقة",
                icon: Icons.card_giftcard,
                keyboardType: TextInputType.text),
          ),
          Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xffF5F4F8),
                    borderRadius: BorderRadius.circular(10)),
                child: const CustomTextformfiled(
                    hintText: "CVV",
                    icon: Icons.person,
                    keyboardType: TextInputType.text),
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xffF5F4F8),
                    borderRadius: BorderRadius.circular(10)),
                child: const CustomTextformfiled(
                    hintText: "11/05/2023",
                    icon: Icons.card_giftcard,
                    keyboardType: TextInputType.text),
              ),
            ],
          ),
          Gap(42),
          Container(
            width: 250,
            height: 50,
            child: CustomElevatedBotton(
                backgroundtext: Colors.white,
                AppColors.goldColor,
                data: "تأكيد", onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FinishPusheView()));
            }),
          ),
        ],
      ),
    );
  }
}
