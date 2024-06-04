import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profil_setting/Profil_Setting_view.dart';

class CustomImageProfil extends StatelessWidget {
  const CustomImageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilSetting()));
      },
      child: Image.asset("assets/images/pngs/User - Medium - Edit -  Fill.png"),
    );
  }
}
