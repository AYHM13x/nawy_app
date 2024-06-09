
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';

class OrderRow extends StatelessWidget {
  final String name;
  final String amount;
  final String profit;

  OrderRow({required this.name, required this.amount, required this.profit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(AppImages.resiverImageProfile)),
              SizedBox(width: 5),
              Text(name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  )),
            ],
          ),
          Text(amount,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12,
              )),
          Text(profit,
              style: TextStyle(
                color: profit.startsWith('+') ? Colors.green : Colors.red,
                fontSize: 13,
              )),
          Icon(Icons.info, color: Colors.purple),
        ],
      ),
    );
  }
}

