import 'package:flutter/material.dart';
import 'package:nawy_app/features/_3_filter/appbars/filter_view_appbar.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FilterViewAppBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        )
      ],
    );
  }
}
