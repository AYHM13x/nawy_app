import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class SearchBarItemView extends StatelessWidget {
  const SearchBarItemView({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Builder(
        builder: (context) => Text(
          title,
          style: FontStyles.textStyle14Reg.copyWith(
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
