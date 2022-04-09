import 'package:flutter/material.dart';
import 'package:task1/screens/home.dart';
import 'package:task1/screens/list.dart';
import 'package:task1/screens/setting.dart';

class all extends StatefulWidget {
  const all({Key? key}) : super(key: key);

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {
  int _selectedIndex = 0;

// 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    const Home(),

    // TODO: Replace with Card2
    const list(),

    // TODO: Replace with Card3
    const setting()
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],

      // TODO: Add bottom navigation bar
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        showSelectedLabels: false,
        showUnselectedLabels: false,

        // TODO: Set selected tab bar
        // 10
        currentIndex: _selectedIndex,
// 11
        onTap: _onItemTapped,

        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          const BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
