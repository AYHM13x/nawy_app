import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../generated/l10n.dart';
import 'space_item_filter_view.dart';

class SpaceSectionFilterView extends StatelessWidget {
  const SpaceSectionFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).space,
          style: FontStyles.textStyle14Reg.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const Gap(12),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SpaceItemFilterView(text: "50+"),
            SpaceItemFilterView(text: "200+"),
            SpaceItemFilterView(text: "400+"),
            SpaceItemFilterView(text: "500+"),
          ],
        )
      ],
    );
  }
}
