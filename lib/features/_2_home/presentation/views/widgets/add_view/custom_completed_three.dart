import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/widgets/add_view/continer_slide.dart';

class CustomCompletedThree extends StatelessWidget {
  const CustomCompletedThree({super.key});

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
                opacity: 1,
              ),
              ContinerSlide(
                opacity: 1,
              ),
              ContinerSlide(
                opacity: 1,
              ),
            ],
          ),
          SizedBox(height: 22, child: Text(" خطوة  ")),
          SizedBox(height: 22, child: Text(" 3/4  ")),
        ],
      ),
    );
  }
}
