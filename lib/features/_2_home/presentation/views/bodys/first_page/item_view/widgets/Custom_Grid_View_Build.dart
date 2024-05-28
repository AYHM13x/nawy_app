import 'package:flutter/material.dart';

class CustomGridViewBuild extends StatelessWidget {
  const CustomGridViewBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: double.infinity,
        child: GridView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset(
                      "assets/images/pngs/unsplash_y3_AHHrxUBY.png")),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10),
        ));
  }
}
