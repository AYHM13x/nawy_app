import 'package:flutter/material.dart';
import 'package:nawy_app/features/_2_home/presentation/views/bodies/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "")
        ],
      ),
      body: listWidgets[0],
    );
  }
}
