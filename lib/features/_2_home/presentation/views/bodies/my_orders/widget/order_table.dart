import 'package:flutter/material.dart';

import 'order_row_header.dart';
import 'oreder_row.dart';

class OrdersTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          OrderRowHeader(),
          Divider(thickness: 1),
          OrderRow(name: 'محمد خليل', amount: '4321', profit: '+84%'),
          OrderRow(name: 'محمد خليل', amount: '4033', profit: '-8%'),
          OrderRow(name: 'محمد خليل', amount: '3128', profit: '+2%'),
          OrderRow(name: 'محمد خليل', amount: '2104', profit: '+33%'),
          OrderRow(name: 'محمد خليل', amount: '2003', profit: '+30%'),
          OrderRow(name: 'محمد خليل', amount: '1894', profit: '+15%'),
          OrderRow(name: 'محمد خليل', amount: '405', profit: '-12%'),
        ],
      ),
    );
  }
}
