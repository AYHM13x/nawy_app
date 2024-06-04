import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Archives_View/widgets/Archives_View_Body.dart';

class ArchivesView extends StatelessWidget {
  const ArchivesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "المحفوظات",
            style: FontStyles.textStyle16Bold.copyWith(color: Colors.white),
          ),
        ),
        backgroundColor: AppColors.pickColor,
      ),
      body: ArchivesViewBody(),
    );
  }
}
