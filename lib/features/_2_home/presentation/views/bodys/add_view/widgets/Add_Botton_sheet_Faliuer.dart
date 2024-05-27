import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/add_view_body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

class AddBottonsheetFaliuer extends StatefulWidget {
  const AddBottonsheetFaliuer({super.key});

  @override
  State<AddBottonsheetFaliuer> createState() => _AddBottonsheetFaliuerState();
}

class _AddBottonsheetFaliuerState extends State<AddBottonsheetFaliuer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20, top: 10),
            child: Divider(
              color: Color.fromARGB(255, 57, 52, 52),
              endIndent: 175,
              indent: 170,
              thickness: 5,
              height: 10,
            ),
          ),
          Image.asset("assets/images/pngs/Alert - Danger.png"),
          Gap(30),
          const Text(
            "للأسف لقد تم حدوث خطأ غير متوقع",
            style: TextStyle(color: Colors.black),
          ),
          const Text(
            "يرجى المحاولة لاحقا",
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
