// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:nawy_app/core/utlis/assets/app_colors.dart';
// import 'package:nawy_app/core/utlis/assets/font_styles.dart';
// import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
// import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Continer_Slid.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Colomun_chose_Property.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Row_Chose_Year_And_Month.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Sale_And_Recent.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_app_bar.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_number_of_rooms.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_Environment.dart';
// import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_completed_four.dart';

// class FinishMapBody extends StatelessWidget {
//   const FinishMapBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           CustomAppBarAddView(),
//           Gap(20),
//           CustomCompletedfour(),
//           Gap(20),
//           CustomSaleAndRecent(),
//           Gap(20),
//           CustomRowChoseYearAndMonth(),
//           Gap(20),
//           CustomColomunchoseProperty(),
//           Gap(20),
//           CustomNumberOfRooms(),
//           Gap(20),
//           customEnvironment(),
//           Gap(50),
//           ElevatedButton(
//               onPressed: () {
//                 builder:
//                 (context) {
//                   showModalBottomSheet(
//                       context: context,
//                       builder: (context) {
//                         return AddBottonsheet();
//                       });
//                 };
//               },
//               child: Text("data"))
//         ],
//       ),
//     );
//   }
// }

// class AddBottonsheet extends StatefulWidget {
//   const AddBottonsheet({super.key});

//   @override
//   State<AddBottonsheet> createState() => _AddBottonsheetState();
// }

// class _AddBottonsheetState extends State<AddBottonsheet> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: double.infinity,
//       color: Colors.black,
//       child: Center(child: Text("data")),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';
import 'package:nawy_app/core/utlis/widgets/custom_text_form_filed.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Continer_Slid.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Colomun_chose_Property.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Row_Chose_Year_And_Month.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_Sale_And_Recent.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_app_bar.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/Custom_number_of_rooms.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_Environment.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/add_view/widgets/custom_completed_four.dart';

class FinishMapBody extends StatelessWidget {
  const FinishMapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBarAddView(),
          Gap(20),
          CustomCompletedfour(),
          Gap(20),
          CustomSaleAndRecent(),
          Gap(20),
          CustomRowChoseYearAndMonth(),
          Gap(20),
          CustomColomunchoseProperty(),
          Gap(20),
          CustomNumberOfRooms(),
          Gap(20),
          customEnvironment(),
          Gap(50),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return AddBottonsheet();
                },
              );
            },
            child: Text("عرض القائمة السفلية"),
          ),
        ],
      ),
    );
  }
}

class AddBottonsheet extends StatefulWidget {
  const AddBottonsheet({super.key});

  @override
  State<AddBottonsheet> createState() => _AddBottonsheetState();
}

class _AddBottonsheetState extends State<AddBottonsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.black,
      child: Center(
        child: Text(
          "محتوى القائمة السفلية",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
