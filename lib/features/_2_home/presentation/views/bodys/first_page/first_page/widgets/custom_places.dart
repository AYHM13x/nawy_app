import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomPlaces extends StatelessWidget {
  const CustomPlaces({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Image.asset(
                    name,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "العين",
                    style: FontStyles.textStyle14Reg,
                  )
                ],
              ),
            );
          }),
    );
  }
}
