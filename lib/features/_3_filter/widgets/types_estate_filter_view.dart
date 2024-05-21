import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'type_estate_item_filter_view.dart';

class TypesEstateFilterView extends StatelessWidget {
  const TypesEstateFilterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
