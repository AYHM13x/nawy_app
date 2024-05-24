import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/add_view/add_view_body.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/first_page/first_page_body.dart';

import '../../../../core/utlis/assets/app_images.dart';
import '../../../../core/utlis/assets/font_styles.dart';

import '../../../../generated/l10n.dart';
import 'bodies/map_view_body.dart';
import 'widgets/map_view/custom_svg_pic_asset.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selected = 0;
  List<Widget> listWidgets = const [
    FirstPagebody(),
    MapViewBody(),
    AddBodyView(),
    // ProfileView(),
    // EditProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: FontStyles.textStyle14Reg.copyWith(
          fontSize: 11,
        ),
        unselectedLabelStyle: FontStyles.textStyle14Reg.copyWith(
          fontSize: 11,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.5),
        ),
        selectedFontSize: 11,
        unselectedFontSize: 11,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: CustomSvgPicAsset(
              image: AppImages.homeIcon,
              color: Colors.black.withOpacity(0.5),
            ),
            label: S.of(context).home,
            activeIcon: const CustomSvgPicAsset(
              image: AppImages.homeIcon,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicAsset(
              image: AppImages.mapIcon,
              color: Colors.black.withOpacity(0.5),
            ),
            label: S.of(context).map,
            activeIcon: const CustomSvgPicAsset(
              image: AppImages.mapIcon,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicAsset(
              image: AppImages.addIcon,
              color: Colors.black.withOpacity(0.5),
            ),
            label: S.of(context).add,
            activeIcon: const CustomSvgPicAsset(
              image: AppImages.addIcon,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicAsset(
              image: AppImages.myOrdersIcon,
              color: Colors.black.withOpacity(0.5),
            ),
            label: S.of(context).myOrders,
            activeIcon: const CustomSvgPicAsset(
              image: AppImages.myOrdersIcon,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicAsset(
              image: AppImages.chatsIcon,
              color: Colors.black.withOpacity(0.5),
            ),
            label: S.of(context).chats,
            activeIcon: const CustomSvgPicAsset(
              image: AppImages.chatsIcon,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: listWidgets[2],
    );
  }
}
