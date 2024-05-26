// import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';
// import 'package:nawy_app/core/utlis/assets/app_colors.dart';
// import 'package:nawy_app/core/utlis/widgets/custom_elevated_botton.dart';

// class CustomRowChoseImagesOrdescriptionOrSimilar extends StatefulWidget {
//   const CustomRowChoseImagesOrdescriptionOrSimilar({super.key});

//   @override
//   State<CustomRowChoseImagesOrdescriptionOrSimilar> createState() =>
//       _CustomRowChoseImagesOrdescriptionOrSimilarState();
// }

// class _CustomRowChoseImagesOrdescriptionOrSimilarState
//     extends State<CustomRowChoseImagesOrdescriptionOrSimilar> {
//   late int isSelected = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 54,
//       child: Row(
//         children: [
//           ContinerChose(
//             onTap: () {
//               setState(() {
//                 print("111111==========");
//                 isSelected = 0;
//               });
//             },
//             color: isSelected == 0 ? AppColors.darkPinkColor : Colors.white,
//             data: "وصف",
//           ),
//           ContinerChose(
//             onTap: () {
//               print("111111===================");
//               setState(() {
//                 isSelected = 1;
//               });
//             },
//             color: isSelected == 1 ? AppColors.darkPinkColor : Colors.white,
//             data: "وصف",
//           ),
//           ContinerChose(
//             onTap: () {
//               setState(() {
//                 isSelected = 2;
//               });
//             },
//             color: isSelected == 2 ? AppColors.darkPinkColor : Colors.white,
//             data: "وصف",
//           ),
//           // CustomElevatedBotton(Colors.white, data: "وصف", onPressed: () {}),
//           // CustomElevatedBotton(Colors.white, data: "صور", onPressed: () {}),
//           // CustomElevatedBotton(Colors.white, data: "مشابهة", onPressed: () {}),
//         ],
//       ),
//     );
//   }
// }

// class ContinerChose extends StatelessWidget {
//   const ContinerChose(
//       {super.key,
//       required this.data,
//       required this.color,
//       required this.onTap});
//   final String data;
//   final Color color;
//   final Function? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         onTap!(); // استدعاء الدالة هنا
//       },
//       child: Container(
//         height: 50,
//         decoration: BoxDecoration(
//           border: Border(
//             bottom: BorderSide(
//               color: color, // لون الحافة السفلية
//               width: 2, // عرض الحافة السفلية
//             ),
//           ),
//         ),
//         child: Text(data),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';

class CustomRowChoseImagesOrdescriptionOrSimilar extends StatefulWidget {
  const CustomRowChoseImagesOrdescriptionOrSimilar({super.key});

  @override
  State<CustomRowChoseImagesOrdescriptionOrSimilar> createState() =>
      _CustomRowChoseImagesOrdescriptionOrSimilarState();
}

class _CustomRowChoseImagesOrdescriptionOrSimilarState
    extends State<CustomRowChoseImagesOrdescriptionOrSimilar> {
  late int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      child: Row(
        children: [
          Expanded(
            child: ContinerChose(
              onTap: () {
                setState(() {
                  isSelected = 0;
                });
              },
              color: isSelected == 0 ? AppColors.darkPinkColor : Colors.white,
              data: "وصف",
            ),
          ),
          Expanded(
            child: ContinerChose(
              onTap: () {
                setState(() {
                  isSelected = 1;
                });
              },
              color: isSelected == 1 ? AppColors.darkPinkColor : Colors.white,
              data: "صور",
            ),
          ),
          Expanded(
            child: ContinerChose(
              onTap: () {
                setState(() {
                  isSelected = 2;
                });
              },
              color: isSelected == 2 ? AppColors.darkPinkColor : Colors.white,
              data: "مشابهة",
            ),
          ),
        ],
      ),
    );
  }
}

class ContinerChose extends StatelessWidget {
  const ContinerChose(
      {super.key,
      required this.data,
      required this.color,
      required this.onTap});
  final String data;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(); // استدعاء الدالة هنا
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: color, // لون الحافة السفلية
              width: 2, // عرض الحافة السفلية
            ),
          ),
        ),
        child: Center(
          child: Text(
            data,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
