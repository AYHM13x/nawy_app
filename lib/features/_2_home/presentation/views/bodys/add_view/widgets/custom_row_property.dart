import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nawy_app/core/utlis/assets/font_styles.dart';

class CustomRowProperty extends StatefulWidget {
  const CustomRowProperty({
    super.key,
    required this.data,
  });
  final String data;

  @override
  State<CustomRowProperty> createState() => _CustomRowPropertyState();
}

class _CustomRowPropertyState extends State<CustomRowProperty> {
  int dataTow = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF5F4F8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.data),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffA1A5C1),
                    borderRadius: BorderRadius.circular(25)),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        dataTow++;
                      });
                    },
                    icon: Icon(Icons.add)),
              ),
              Gap(18),
              Text(
                "$dataTow",
                style: FontStyles.textStyle16Bold,
              ),
              Gap(18),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffA1A5C1),
                    borderRadius: BorderRadius.circular(25)),
                child: IconButton(
                    onPressed: () {
                      onPressed:
                      () {
                        setState(() {
                          dataTow--;
                        });
                      };
                    },
                    icon: Icon(Icons.remove)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
