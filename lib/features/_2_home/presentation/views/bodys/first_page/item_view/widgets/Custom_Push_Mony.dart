import 'package:flutter/material.dart';

import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Servicess.dart';

class CustomPushMony extends StatelessWidget {
  const CustomPushMony({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomContinerServicessTow(
            icon: Icons.visibility_sharp,
            data: "كرد",
            continerColor: Colors.white,
            onTap: () {},
            iconColor: Colors.black,
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomContinerServicessTow(
            icon: Icons.payment,
            data: "باي",
            continerColor: Colors.white,
            onTap: () {},
            iconColor: Colors.black,
            textColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
