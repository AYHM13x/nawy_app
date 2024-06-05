import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Archives_View/Archives_View.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Setting_View/Setting_View.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/widgets/Row_Drawer.dart';

class CustomRowDrawer extends StatelessWidget {
  const CustomRowDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ArchivesView(),
                ));
          },
          child: const RowDrawer(
            data: "المحفوظات",
            icon: Icons.memory,
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            print("=================");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingView(),
                ));
          },
          child: RowDrawer(
            data: "الاعدادات",
            icon: Icons.settings,
          ),
        ),
        Gap(20),
        GestureDetector(
          onTap: () {},
          child: RowDrawer(
            data: "المحذوفات",
            icon: Icons.delete,
          ),
        ),
      ],
    );
  }
}
