import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/sign_in_view.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';
import 'package:nawy_app/generated/l10n.dart';

import 'core/utlis/assets/app_font_families.dart';

import 'features/_2_home/presentation/views/home_view.dart';
import 'generated/l10n.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => // Wrap your app
    // ),
    const NawyApp(),
  );
}

class NawyApp extends StatelessWidget {
  const NawyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // التصميم الأصلي للمشروع
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        // locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        useInheritedMediaQuery: false,
        locale: Locale("ar"),

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
        home: const SignInView(),
      ),
    );
  }
}
