import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodys/first_page/item_view/widgets/Custom_Row_Specifications.dart';

class ContinerChose extends StatelessWidget {
  const ContinerChose(
      {super.key,
      required this.data,
      required this.color,
      required this.onTap});
  final String data;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: color, // لون الحافة السفلية
              width: 2, // عرض الحافة السفلية
            ),
          ),
        ),
        child: Center(
          child: Text(
            data,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
