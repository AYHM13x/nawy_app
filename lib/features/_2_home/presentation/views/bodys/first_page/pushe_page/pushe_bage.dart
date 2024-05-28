import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/app_font_families.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/pushe_page/widgets/Push_View_Body.dart';

class PusheView extends StatelessWidget {
  const PusheView({super.key});

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
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.pickColor,
      ),
      body: PushViewBody(),
    );
  }
}
