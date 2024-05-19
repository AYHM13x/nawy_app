import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

import '../splash_view.dart';

class CustomAppar extends StatelessWidget {
  const CustomAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppImages.splashLogo2Image,
        ),
        IconButton(
<<<<<<< HEAD:lib/features/_0_spalsh/presentation/views/widgets/coustom_app_bar.dart
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SplashView()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        SvgPicture.asset(
          AppImages.splashLogo2Image,
        ),
=======
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplaseView()),
              );
            },
            icon: Icon(Icons.arrow_back)),
>>>>>>> f566b63da5cf201e168ba5cf6269d980d1c8528e:lib/features/spalshe_and welcom_view/wodgets/coustom_app_bar.dart
      ],
    );
  }
}
