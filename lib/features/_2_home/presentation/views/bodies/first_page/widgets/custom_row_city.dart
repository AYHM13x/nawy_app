import 'package:flutter/material.dart';

class customRowCity extends StatefulWidget {
  const customRowCity({super.key});

  @override
  State<customRowCity> createState() => _customRowCityState();
}

class _customRowCityState extends State<customRowCity> {
  String selectedMethod = " الامارات";
  List<DropdownMenuItem> ffff = const [
    DropdownMenuItem(value: "السعودية", child: Text("السعودية")),
    DropdownMenuItem(value: "الامارات", child: Text("الامارات")),
    DropdownMenuItem(value: "البحرين", child: Text("البحرين")),
    DropdownMenuItem(value: "قطر", child: Text("قطر"))
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Row(
        children: [
          Container(
            width: 140,
            height: 48,
            child: DropdownButtonFormField(
                hint: Text("اختر البلد"),
                // value: selectedMethod,
                items: ffff,
                onChanged: (val) {
                  setState(() {
                    selectedMethod = val;
                  });
                }),
          ),
          Icon(Icons.location_on),
        ],
      ),
    );
  }
}
