// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// abstract class FontStyles {
//   static const textStyle9Reg = TextStyle(
//     fontSize: 9,
//     fontWeight: FontWeight.w400,
//   );
//   static const textStyle14Reg = TextStyle(
//     fontSize: 14,
//     fontWeight: FontWeight.w400,
//   );

//   static const textStyle18Reg = TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w400,
//   );

//   static final textStyle16Bold = TextStyle(
//     fontSize: 16.sp,
//     fontWeight: FontWeight.w700,
//   );

//   static const textStyle18Bold = TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w700,
//   );

//   static const textStyle22Bold = TextStyle(
//     fontSize: 22,
//     fontWeight: FontWeight.w700,
//   );
// }
// // الخطوة الاولى لعمل responsiv

// // scaleFactor
// // responsive font size
// // (min , max ) Fontsize
// // double getResponsiveFontSize({required double fontSize}) {}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class FontStyles {
  static final textStyle9Reg = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
  );
  static final textStyle14Reg = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static final textStyle18Reg = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static final textStyle16Bold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );
  static final textStyle18Bold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );
  static final textStyle22Bold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
  );
}
