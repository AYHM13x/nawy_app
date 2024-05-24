import 'package:flutter/material.dart';

import 'continer_slide.dart';

class CustomCompleted extends StatelessWidget {
  const CustomCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 335,
      height: 38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              ContinerSlide(
                opacity: .5,
              ),
              ContinerSlide(
                opacity: .5,
              ),
              ContinerSlide(
                opacity: .5,
              ),
              ContinerSlide(
                opacity: 1,
              ),
            ],
          ),
          SizedBox(height: 22, child: Text(" خطوة  ")),
          SizedBox(height: 22, child: Text(" 1/4  ")),
        ],
      ),
    );
  }
}
