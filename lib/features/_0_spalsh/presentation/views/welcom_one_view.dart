import 'package:flutter/material.dart';

import 'widgets/coustom_app_bar.dart';

class WelcomOneView extends StatelessWidget {
  const WelcomOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              CustomAppar(),
            ],
          ),
        ),
      ),
    );
  }
}
