import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_home_page_drawer/home.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _selectedindex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("screen 2"),
    Text("Screen 3"),
    Text("Screen 4"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        // iconSize: 10.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/bottom_nav_home.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/bottom_nav_employer.png")),
            label: "Employer",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/bottom_nav_earnings.png")),
            label: "Earnings",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/bottom_nav_profile.png")),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedindex,
        // fixedColor: Colors.grey,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
