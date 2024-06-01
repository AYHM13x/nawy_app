import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utlis/assets/app_colors.dart';
import '../../../../../../generated/l10n.dart';
import '../../widgets/map_view/search_bar_item_view.dart';

class CustomSearchBarView extends StatelessWidget {
  const CustomSearchBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60.h,
        right: 20.w,
        left: 20.w,
      ),
      child: Container(
        // width: 100,
        height: 64.h,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColors.blueColor,
              ),
            ),
            SearchBarItemView(
              title: S.of(context).all,
            ),
            SearchBarItemView(
              title: S.of(context).houses,
            ),
            SearchBarItemView(
              title: S.of(context).villas,
            ),
            SearchBarItemView(
              title: S.of(context).apartments,
            ),
          ],
        ),
      ),
    );
  }
}
