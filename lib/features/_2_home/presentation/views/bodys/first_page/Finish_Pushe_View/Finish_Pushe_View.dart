import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/Finish_Pushe_View/widget/Finish_Pushe_View_Body.dart';

class FinishPusheView extends StatelessWidget {
  const FinishPusheView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "صفحة الدفع",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.pickColor,
      ),
      body: FinishPusheViewBody(),
    );
  }
}
