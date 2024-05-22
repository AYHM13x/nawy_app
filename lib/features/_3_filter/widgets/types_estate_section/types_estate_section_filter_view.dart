import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utlis/assets/font_styles.dart';
import '../../../../generated/l10n.dart';
import 'type_estate_item_filter_view.dart';

class TypesEstateSectionFilterView extends StatelessWidget {
  const TypesEstateSectionFilterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).typeEstate,
          style: FontStyles.textStyle14Reg.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const Gap(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TypeEstateItemFilterView(
              text: S.of(context).all,
            ),
            TypeEstateItemFilterView(
              text: S.of(context).apartments,
            ),
            TypeEstateItemFilterView(
              text: S.of(context).villas,
            ),
            TypeEstateItemFilterView(
              text: S.of(context).houses,
            ),
          ],
        ),
      ],
    );
  }
}
