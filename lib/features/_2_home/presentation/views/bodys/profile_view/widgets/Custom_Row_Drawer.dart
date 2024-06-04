import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/profile_view/Archives_View/Archives_View.dart';
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
          child: RowDrawer(
            data: "المحفوظات",
            icon: Icons.memory,
          ),
        ),
        Gap(20),
        GestureDetector(
          onTap: () {
            print("================");
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
