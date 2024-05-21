import 'package:flutter/material.dart';

import 'bodies/filter_view_body.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: FilterViewBody(),
      ),
    );
  }
}
