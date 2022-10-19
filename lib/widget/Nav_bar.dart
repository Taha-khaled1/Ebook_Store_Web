import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleBottomNavigationBar(
        initialSelection: currentPage,
        circleColor: Colors.purple,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: [
          TabData(
            icon: Icons.home,
            iconSize: 25, // Optional
            title: 'Home', // Optional
            fontSize: 12, // Optional
          ),
          TabData(icon: Icons.history),
          TabData(icon: Icons.search),
          TabData(icon: Icons.alarm),
        ],
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}
