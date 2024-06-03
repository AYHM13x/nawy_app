import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // استيراد البكج
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom%D9%8C_Row_Pecifications.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_Row_item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_row_street.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/item_view.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ItemView()));
      },
      child: Container(
        width: double.infinity,
        height: 290.h, // تحديد الارتفاع باستخدام screenutil
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              width: 244.w,
              child: Padding(
                padding: EdgeInsets.all(
                    ScreenUtil().setWidth(8)), // تحديد التباعد بوحدات متناسقة
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Image.asset(name, fit: BoxFit.cover),
                      const CustomRowitem(),
                      const CustomRowStreet(),
                      Text(
                        "انقر لعرض التفاصيل0",
                        style: FontStyles.textStyle9Reg,
                      ),
                      Customspecifications()
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
