import 'package:flutter/material.dart';
import 'package:nawy_app/features/map/presentation/views/bodies/home_view_body.dart';

class navitagationView extends StatefulWidget {
  const navitagationView({
    super.key,
  });

  @override
  State<navitagationView> createState() => _navitagationViewState();
}

class _navitagationViewState extends State<navitagationView> {
  int selected = 0;
  List<Widget> listWidgets = const [
    HomeViewBody(),
    // TasksView(),
    // ProfileView(),
    // EditProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: "")
          ]),
      body: Center(
        child: listWidgets[selected],
      ),
    );
  }
}
