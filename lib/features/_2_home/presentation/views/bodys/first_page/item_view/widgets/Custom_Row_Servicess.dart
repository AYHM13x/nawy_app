import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

class CustomRowServicess extends StatefulWidget {
  const CustomRowServicess({super.key});

  @override
  State<CustomRowServicess> createState() => _CustomRowServicessState();
}

class _CustomRowServicessState extends State<CustomRowServicess> {
  bool resturant = true;
  bool sport = false;
  bool swimming = false;
  bool park = false;
  bool badygard = false;
  bool wifi = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomContinerServicessTow(
                  onTap: () {
                    setState(() {
                      print("adwfaefaefe==========");
                      resturant != resturant;
                    });
                  },
                  continerColor: resturant ? AppColors.pickColor : Colors.white,
                  icon: Icons.restaurant,
                  data: "مطعم",
                  iconColor: resturant ? AppColors.pickColor : Colors.white,
                  textColor: resturant ? Colors.white : Colors.black),
            ),
            Expanded(
              child: CustomContinerServicessTow(
                  onTap: () {
                    setState(() {
                      print("adwfaefaefe==========");
                      resturant != resturant;
                    });
                  },
                  continerColor: resturant ? AppColors.pickColor : Colors.white,
                  icon: Icons.sports,
                  data: "نادي رياضة",
                  iconColor: resturant ? AppColors.pickColor : Colors.white,
                  textColor: resturant ? Colors.white : Colors.black),
            ),
            Expanded(
              child: CustomContinerServicessTow(
                  onTap: () {
                    setState(() {
                      print("adwfaefaefe==========");
                      resturant != resturant;
                    });
                  },
                  continerColor: resturant ? AppColors.pickColor : Colors.white,
                  icon: Icons.switch_camera_outlined,
                  data: "حوص سباحة",
                  iconColor: resturant ? AppColors.pickColor : Colors.white,
                  textColor: resturant ? Colors.white : Colors.black),
            ),
            Expanded(
              child: CustomContinerServicessTow(
                onTap: () {
                  setState(() {
                    print("adwfaefaefe==========");
                    resturant != resturant;
                  });
                },
                icon: Icons.park,
                data: "مصف سيارات",
                iconColor: resturant ? AppColors.pickColor : Colors.white,
                textColor: resturant ? Colors.white : Colors.black,
                continerColor: resturant ? AppColors.pickColor : Colors.white,
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomContinerServicessTow(
                  onTap: () {
                    setState(() {
                      print("adwfaefaefe==========");
                      resturant != resturant;
                    });
                  },
                  continerColor: resturant ? AppColors.pickColor : Colors.white,
                  icon: Icons.restaurant,
                  data: "مطعم",
                  iconColor: resturant ? AppColors.pickColor : Colors.white,
                  textColor: resturant ? Colors.white : Colors.black),
            ),
            Expanded(
              child: CustomContinerServicessTow(
                  onTap: () {
                    setState(() {
                      print("adwfaefaefe==========");
                      resturant != resturant;
                    });
                  },
                  continerColor: resturant ? AppColors.pickColor : Colors.white,
                  icon: Icons.sports,
                  data: "نادي رياضة",
                  iconColor: resturant ? AppColors.pickColor : Colors.white,
                  textColor: resturant ? Colors.white : Colors.black),
            ),
          ],
        )
      ],
    );
  }
}

// backgroundtext: resturant ? Colors.white : Colors.black,
//                 resturant ? AppColors.pickColor : Colors.white,
//                 data: "مطعم", onPressed: () {
//               setState(() {
//                 resturant = !resturant;
//               });
class CustomContinerServicessTow extends StatelessWidget {
  const CustomContinerServicessTow({
    super.key,
    required this.icon,
    required this.data,
    required this.continerColor,
    required this.onTap,
    required this.iconColor,
    required this.textColor,
  });
  final IconData icon;
  final String data;
  final Color iconColor;
  final Color textColor;
  // final VoidCallback? ontap;
  final Color continerColor;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        width: 80,
        height: 60,
        color: continerColor,
        child: Column(
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            Text(
              data,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
