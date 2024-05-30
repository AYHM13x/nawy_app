import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Add_Botton_sheet_Scusess.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/Finish_Pushe_View.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/widget/Custom_Row_Code.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/widget/Custom_Row_Text_Field.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/widget/Custom_Row_Time.dart';

class FinishPusheViewBody extends StatelessWidget {
  const FinishPusheViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(26),
          SvgPicture.asset(AppImages.pushimage),
          Gap(19),
          Text(
            "ادخل كود التحقيق",
            style: FontStyles.textStyle18Reg,
          ),
          Gap(32),
          Text(
            "ادخل الكود المكون من 4 ارقام",
            style: FontStyles.textStyle14Reg,
          ),
          CustomRowTextField(),
          Gap(28),
          CustomRowTime(),
          Gap(28),
          CustomRowCode(),
          Gap(42),
          Container(
            width: 250,
            height: 50,
            child: CustomElevatedBotton(
                backgroundtext: Colors.white,
                AppColors.goldColor,
                data: "تأكيد", onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const BottonsheetScusesspush();
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

class BottonsheetScusesspush extends StatefulWidget {
  const BottonsheetScusesspush({super.key});

  @override
  State<BottonsheetScusesspush> createState() => _BottonsheetScusesspushState();
}

class _BottonsheetScusesspushState extends State<BottonsheetScusesspush> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.white,
      child: Column(children: [
        Gap(50),
        SvgPicture.asset(AppImages.Vector),
        Gap(50),
        Text(
          "تمت عملية الدفع بنجاح",
          style:
              FontStyles.textStyle14Reg.copyWith(fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
