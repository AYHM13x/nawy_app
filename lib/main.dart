import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// import 'package:custom_navigation_bar/custom_navigation_bar.dart';
// import 'package:doptica_app/constans.dart';
// import 'package:doptica_app/core/utils/app_style.dart';
// import 'package:doptica_app/core/widgets/custom_app_bar.dart';
// import 'package:doptica_app/featurs/edit_profile_feature.dart/edit_profile_view.dart';
// import 'package:doptica_app/featurs/home_feature/home_view.dart';
// import 'package:doptica_app/featurs/home_feature/widgets/custom_grid_view.dart';
// import 'package:doptica_app/featurs/home_feature/widgets/custom_navigator_bar.dart';
// import 'package:doptica_app/featurs/profile_feature/profile_view.dart';
// import 'package:doptica_app/featurs/tasks_featurs/tasks_view.dart';
// import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final DateTime tody = DateTime.now();

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 0,
          ),
          // const CustomAppar(),
          // const CoustomGridView(),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            height: 220,
            width: 320,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Calendar",
                      ),
                      Icon(Icons.calendar_month, color: Colors.black)
                    ],
                  ),
                ),
                SizedBox(
                  width: 221,
                  height: 169,
                  child: TableCalendar(
                    focusedDay: tody,
                    firstDay: DateTime.utc(2010),
                    lastDay: DateTime.utc(2040),
                    availableGestures: AvailableGestures.all,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
