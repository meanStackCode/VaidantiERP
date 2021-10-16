import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_flutter/home/my_projects_screen.dart';
import 'package:test_app_flutter/home/profile_screen.dart';
import 'package:test_app_flutter/home/tasks_screen.dart';

import 'dashboard_screen.dart';

class MainPageScreen extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPageScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    MyProjectsScreen(),
    TaskListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue[400],
            showSelectedLabels: true,
            selectedLabelStyle:
                TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.w700),
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey[600],
            unselectedLabelStyle: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w300,
                fontSize: 12.0),
            selectedIconTheme: IconThemeData(color: Colors.blue[400], size: 30),
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.dashboard_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.wallet_travel_rounded),
                label: 'Projects',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.task_rounded),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person_pin),
                label: 'Profile',
              ),
            ]),
      ),
    );
  }
}
