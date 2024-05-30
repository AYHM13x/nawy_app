// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/first_page_body.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

// import 'core/utlis/assets/app_font_families.dart';

// import 'features/_2_home/presentation/views/home_view.dart';
// import 'generated/l10n.dart';

// void main() {
//   runApp(const NawyApp());
// }

// class NawyApp extends StatelessWidget {
//   const NawyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: Size(375, 812), // التصميم الأصلي للمشروع
//       minTextAdapt: true, // تكيف النصوص تلقائيًا
//       builder: (context, child) => MaterialApp(
//         locale: const Locale("ar"),
//         localizationsDelegates: const [
//           S.delegate,
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           GlobalCupertinoLocalizations.delegate,
//         ],
//         supportedLocales: S.delegate.supportedLocales,
//         debugShowCheckedModeBanner: false,
//         onGenerateTitle: (BuildContext context) => S.of(context).title,
//         // title: S.of(context).title,
//         theme: ThemeData(
//           fontFamily: AppFontFamilies.cairoFont,
//         ),
//         home: const HomeView(),
//       ),
//     );
//   }
// }
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';
import 'package:nawy_app/generated/l10n.dart';

import 'core/utlis/assets/app_font_families.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const NawyApp(),
    ),
  );
}

class NawyApp extends StatelessWidget {
  const NawyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // التصميم الأصلي للمشروع
      minTextAdapt: true, // تكيف النصوص تلقائيًا
      builder: (context, child) => MaterialApp(
        locale: const Locale("ar"),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (BuildContext context) => S.of(context).title,
        // title: S.of(context).title,
        theme: ThemeData(
          fontFamily: AppFontFamilies.cairoFont,
        ),
        home: const HomeView(),
      ),
    );
  }
}
