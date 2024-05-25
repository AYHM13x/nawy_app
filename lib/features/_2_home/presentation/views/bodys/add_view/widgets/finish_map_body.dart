import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Continer_Slid.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_app_bar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_completed_four.dart';

class FinishMapBody extends StatelessWidget {
  const FinishMapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBarAddView(),
          Gap(29),
          CustomCompletedfour(),
        ],
      ),
    );
  }
}
