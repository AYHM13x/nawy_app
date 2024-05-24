import 'package:flutter/material.dart';

import '../../widgets/map_view/custom_text_field_view.dart';

class CustomEnabledSearchBarView extends StatelessWidget {
  const CustomEnabledSearchBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        right: 20,
        left: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 200,
              // offset: Offset(0, 2),
            ),
          ],
        ),
        child: const CustomTextFieldView(),
      ),
    );
  }
}
