import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowCity extends StatefulWidget {
  const CustomRowCity({super.key});

  @override
  State<CustomRowCity> createState() => _CustomRowCityState();
}

class _CustomRowCityState extends State<CustomRowCity> {
  String selectedMethod = " الامارات";
  List<DropdownMenuItem> ffff = const [
    DropdownMenuItem(value: "السعودية", child: Text("السعودية")),
    DropdownMenuItem(value: "الامارات", child: Text("الامارات")),
    DropdownMenuItem(value: "البحرين", child: Text("البحرين")),
    DropdownMenuItem(value: "قطر", child: Text("قطر"))
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(ScreenUtil().setWidth(25)))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
        child: Row(
          children: [
            SizedBox(
              width: ScreenUtil().setWidth(140), // تحديد العرض بوحدات متناسقة
              height: ScreenUtil().setHeight(48),
              child: DropdownButtonFormField(
                  hint: const Text("اختر البلد"),
                  // value: selectedMethod,
                  items: ffff,
                  onChanged: (val) {
                    setState(() {
                      selectedMethod = val;
                    });
                  }),
            ),
            const Icon(Icons.location_on),
          ],
        ),
      ),
    );
  }
}
