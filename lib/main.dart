import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/first_page_body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

import 'core/utlis/assets/app_font_families.dart';

import 'features/_2_home/presentation/views/home_view.dart';
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
      // title: S.of(context).title,
      theme: ThemeData(
        fontFamily: AppFontFamilies.cairoFont,
      ),
      home: const HomeView(),
    );
  }
}
