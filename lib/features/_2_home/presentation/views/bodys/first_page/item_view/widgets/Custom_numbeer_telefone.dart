import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Icon_Bottom.dart';

class Customnumbeertelefone extends StatelessWidget {
  const Customnumbeertelefone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomIconBottom(onPressed: () {}, icon: Icons.mobile_friendly),
            CustomIconBottom(onPressed: () {}, icon: Icons.message),
          ],
        ),
        Row(
          children: [
            Text("098123524646547568"),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Image.asset("assets/images/pngs/bad.png"),
            ),
          ],
        )
      ],
    );
  }
}
