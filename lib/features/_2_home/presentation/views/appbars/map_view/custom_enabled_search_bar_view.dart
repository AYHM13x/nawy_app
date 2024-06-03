import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/map_view/custom_text_field_view.dart';

class CustomEnabledSearchBarView extends StatelessWidget {
  const CustomEnabledSearchBarView({
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
        decoration: BoxDecoration(
          boxShadow: [
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
