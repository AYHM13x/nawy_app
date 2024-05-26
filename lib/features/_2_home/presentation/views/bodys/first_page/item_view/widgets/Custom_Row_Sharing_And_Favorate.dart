import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Icon_Bottom.dart';
import 'package:nawy_app/features/_2_home/presentation/views/home_view.dart';

class CustomRowSharingAndFavorate extends StatelessWidget {
  const CustomRowSharingAndFavorate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            CustomIconBottom(
              icon: Icons.qr_code,
              onPressed: () {},
            ),
            CustomIconBottom(
              icon: Icons.favorite,
              onPressed: () {},
            ),
            CustomIconBottom(
              icon: Icons.share,
              onPressed: () {},
            ),
          ],
        ),
        CustomIconBottom(
          icon: Icons.arrow_back,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeView()));
          },
        ),
      ],
    );
  }
}
