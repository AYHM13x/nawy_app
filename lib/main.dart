import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:gap/gap.dart';
import 'core/utlis/assets/app_font_families.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: Builder(
            builder: (BuildContext context) => Text(S.of(context).title),
          ),
        ),
        // body : Text(S.of(context).title)
        body: Column(
          children: [
            const Gap(50),
            Builder(
              builder: (BuildContext context) => Text(S.of(context).title),
            ),
          ],
        ),
      ),
    );
  }
}
