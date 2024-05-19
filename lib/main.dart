import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
<<<<<<< HEAD
import 'package:nawy_app/features/_0_spalsh/presentation/views/splash_view.dart';

import 'core/utlis/assets/app_font_families.dart';
=======

import 'core/utlis/assets/app_font_families.dart';

import 'package:nawy_app/features/spalshe_and%20welcom_view/spalshe_view.dart';
import 'core/utlis/assets/app_font_families.dart';
>>>>>>> f566b63da5cf201e168ba5cf6269d980d1c8528e
import 'generated/l10n.dart';

void main() {
  runApp(const NawyApp());
}

class NawyApp extends StatelessWidget {
  const NawyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      // title: S.of(c
      // ontext).title,
      theme: ThemeData(
        fontFamily: AppFontFamilies.cairoFont,
      ),

      home: const SplashView(),
    );
  }
}
