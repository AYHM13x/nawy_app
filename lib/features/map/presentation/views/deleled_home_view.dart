import 'package:flutter/material.dart';

import 'bodies/home_view_body.dart';

class DeletedHomeView extends StatelessWidget {
  const DeletedHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
