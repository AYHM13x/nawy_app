import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/add_view_body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

class AddBottonsheetScusess extends StatefulWidget {
  const AddBottonsheetScusess({super.key});

  @override
  State<AddBottonsheetScusess> createState() => _AddBottonsheetScusessState();
}

class _AddBottonsheetScusessState extends State<AddBottonsheetScusess> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Divider(
              thickness: 10,
              height: 10,
            ),
          ),
          Image.asset("assets/images/pngs/Alert - Success.png"),
          Gap(30),
          const Text(
            "سيتم نشر رحلتك لدى الاخرين ",
            style: TextStyle(color: Colors.black),
          ),
          const Text(
            "   ستتلقى الطلبات بعد نشر  ",
            style: TextStyle(color: Colors.black),
          ),
          Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedBotton(AppColors.yellowColor, data: "التالي",
                  onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ));
              }),
              Gap(30),
              CustomElevatedBotton(
                  backgroundtext: Colors.white,
                  AppColors.grayColor,
                  data: "تعديل", onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddBodyView(),
                    ));
              }),
            ],
          )
        ],
      ),
    );
  }
}
