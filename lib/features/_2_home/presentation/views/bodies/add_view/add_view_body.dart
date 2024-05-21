import 'package:flutter/material.dart';
import 'package:nawy_app/features/_0_spalsh/presentation/views/appbars/coustom_app_bar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/widgets/Custom_app_bar.dart';

class AddBodyView extends StatelessWidget {
  const AddBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBarAddView()],
    );
  }
}
