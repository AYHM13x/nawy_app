import 'package:flutter/material.dart';

import 'appbars/coustom_app_bar.dart';
import 'widgets/custom_row_elevated.dart';

class WelcomeOneView extends StatelessWidget {
  const WelcomeOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              CustomAppBar(),
              coustomRowElevatedBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
