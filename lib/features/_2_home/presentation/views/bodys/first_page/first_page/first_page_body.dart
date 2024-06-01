import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/Custom_List_View_Item.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_chose_bottom.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/first_page/widgets/custom_head.dart';
import '../../../widgets/main_view/custom_chose_bottom.dart';

class FirstPagebody extends StatelessWidget {
  const FirstPagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomHead(),
          const SizedBox(
            height: 10,
          ),
          const customSearsh(),
          const SizedBox(
            height: 10,
          ),
          const Customchosebotton(),
          Column(
            children: [
              Text(
                "الأكثر شيوعا :",
                style: FontStyles.textStyle16Bold,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomListViewItem(
                name: AppImages.dillon,
              ),
            ],
          )
        ],
      ),
    );
  }
}



      //  الثالث
          // Column(
          //   children: [
          //     CustomListViewItem(
          //       name:
          //           "assets/images/pngs/dillon-kydd-XGvwt544g8k-unsplash 1.png",
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Text(
          //       "اهم الاماكن :",
          //       style: FontStyles.textStyle16Bold,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     CustomPlaces(
          //       name: "assets/images/pngs/rowplaces.png",
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Text(
          //       "اهم المؤثرين :",
          //       style: FontStyles.textStyle16Bold,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     CustomInfluencers(),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Text(
          //       "اهم العقارات القريبة :",
          //       style: FontStyles.textStyle16Bold,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     CustomListViewItem(
          //       name: "assets/images/dillon-kydd-XGvwt544g8k-unsplash 1.png",
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //   ],
          // )





//الثاني
// Column(
//   children: [
//     Text(
//       "الأكثر شيوعا :",
//       style: FontStyles.textStyle16Bold,
//     ),
//     SizedBox(
//       height: 20,
//     ),
//     CustomPlaces(
//       name: AppImages.rowPlace,
//     ),
//     SizedBox(
//       height: 20,
//     ),
//     CustomListViewItem(
//       name: AppImages.dillon,
//     ),
//   ],
// )S



// Column(
//           children: [
//             Text(
//               "الأكثر شيوعا :",
//               style: FontStyles.textStyle16Bold,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CustomPlaces(
//               name: "assets/images/rowplaces.png",
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CustomListViewItem(
//               name: "assets/images/dillon-kydd-XGvwt544g8k-unsplash 1.png",
//             ),
//           ],
//         )



// class Description extends StatelessWidget {
//   const Description({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//  const CustomListViewItem(
//   name: "assets/images/dillon-kydd-XGvwt544g8k-unsplash 1.png",
// ),
//         const SizedBox(
//           height: 20,
//         ),
//         Text(
//           "اهم الاماكن :",
//           style: FontStyles.textStyle16Bold,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         const CustomPlaces(
//           name: "assets/images/rowplaces.png",
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Text(
//           "اهم المؤثرين :",
//           style: FontStyles.textStyle16Bold,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         const CustomInfluencers(),
//         const SizedBox(
//           height: 20,
//         ),
//         Text(
//           "اهم العقارات القريبة :",
//           style: FontStyles.textStyle16Bold,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         const CustomListViewItem(
//           name: "assets/images/dillon-kydd-XGvwt544g8k-unsplash 1.png",
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//       ],
//     );
//   }
// }
