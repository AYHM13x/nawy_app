import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customSearsh extends StatelessWidget {
  const customSearsh({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));
    return Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(64),
      decoration: BoxDecoration(
        border:
            Border.symmetric(horizontal: BorderSide(), vertical: BorderSide()),
        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(32)),
      ),
      child: Expanded(
        child: Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.search),
            ),
            const SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent))),
                )),
            GestureDetector(
              child: const Icon(Icons.photo),
            ),
            GestureDetector(
              child: const Icon(Icons.filter),
            ),
          ],
        ),
      ),
    );
  }
}
