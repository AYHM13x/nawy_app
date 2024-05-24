import 'package:flutter/material.dart';

import '../../../../../../core/utlis/assets/font_styles.dart';

class CustomInfluencers extends StatelessWidget {
  const CustomInfluencers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 94,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Image.asset("assets/images/rowplaces.png"),

                const Text(
                  "نها احمد",
                  style: FontStyles.textStyle14Reg,
                ),
                // const Divider(
                //   endIndent: 100,
                //   indent: 100,
                //   thickness: 2,
                //   height: 20,
                // ),
                // Customspecifications()
              ],
            ),
          );
        },
      ),
    );
  }
}
