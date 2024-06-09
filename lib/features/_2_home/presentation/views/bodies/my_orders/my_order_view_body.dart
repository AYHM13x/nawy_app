import 'package:flutter/material.dart';
import 'widget/graph.dart';
import 'widget/info_card.dart';
import 'widget/more_button.dart';
import 'widget/order_header.dart';
import 'widget/order_table.dart';
import 'widget/search_bar.dart';
import 'widget/state_bar.dart';
import 'widget/tab_bar.dart';

class MyOrderViewBody extends StatelessWidget {
  const MyOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StatusBar(),
          SizedBox(height: 10),
          SearchBarWidget(),
          SizedBox(height: 10),
          InfoCards(),
          SizedBox(height: 10),
          Graph(),
          SizedBox(height: 10),
          TabsBar(),
          SizedBox(height: 20),
          OrdersHeader(),
          SizedBox(height: 10),
          OrdersTable(),
          SizedBox(height: 10),
          MoreButton(),
        ],
      ),
    );
  }
}
