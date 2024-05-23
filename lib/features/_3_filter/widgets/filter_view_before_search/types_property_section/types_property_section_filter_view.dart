import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utlis/assets/font_styles.dart';
import '../../../../../generated/l10n.dart';
import 'type_property_item_filter_view.dart';

class TypesPropertySectionFilterView extends StatelessWidget {
  const TypesPropertySectionFilterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).typeProperty,
          style: FontStyles.textStyle14Reg.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const Gap(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TypePropertyItemFilterView(
              text: S.of(context).all,
            ),
            TypePropertyItemFilterView(
              text: S.of(context).apartments,
              // isSelected: true,
            ),
            TypePropertyItemFilterView(
              text: S.of(context).villas,
            ),
            TypePropertyItemFilterView(
              text: S.of(context).houses,
            ),
          ],
        ),
      ],
    );
  }
}
