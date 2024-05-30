import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/pushe_page/pushe_bage.dart';

class CustomChoseBottomsheetPush extends StatefulWidget {
  const CustomChoseBottomsheetPush({super.key});

  @override
  State<CustomChoseBottomsheetPush> createState() =>
      _CustomChoseBottomsheetPushState();
}

class _CustomChoseBottomsheetPushState
    extends State<CustomChoseBottomsheetPush> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const Gap(35),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey,
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close)),
          ),
          const Gap(14),
          Text(
            "حدد طريقة الدفع المستخدمة",
            style:
                FontStyles.textStyle14Reg.copyWith(fontWeight: FontWeight.w800),
          ),
          const Gap(34),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PusheView()));
            },
            child: Container(
              width: 250,
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xffC3C3C3)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Google pay",
                      style: FontStyles.textStyle16Bold,
                    ),
                    SvgPicture.asset(
                      AppImages.googleIcon,
                      height: 26,
                      width: 26,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Gap(22),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PusheView()));
            },
            child: Container(
              width: 250,
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xffC3C3C3)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Apple pay",
                      style: FontStyles.textStyle16Bold,
                    ),
                    SvgPicture.asset(
                      AppImages.appleIcon,
                      height: 26,
                      width: 26,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
