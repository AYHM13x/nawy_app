import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_colors.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';
import 'package:nawy_app/generated/l10n.dart';

import '../../../core/utlis/functions/localization.dart';

class FilterViewAppBar extends StatelessWidget {
  const FilterViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: const BoxDecoration(
        color: AppColors.pickColor,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        left: 38,
        right: 29,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Text(
            S.of(context).filter,
            style: FontStyles.textStyle16Bold.copyWith(
              color: Colors.white,
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Transform.flip(
            flipX: Localization.isArabic() ? true : false,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
