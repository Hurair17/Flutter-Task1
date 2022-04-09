import 'package:flutter/material.dart';
import 'package:task1/components/Vlistview.dart';
import 'package:task1/screens/home.dart';
import 'package:task1/screens/setting.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
//   int _selectedIndex = 0;

// // 8
//   static List<Widget> pages = <Widget>[
//     // TODO: Replace with Card1
//     const Home(),

//     // TODO: Replace with Card2
//     const list(),

//     // TODO: Replace with Card3
//     const setting()
//   ];

// // 9
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Museums',
                  style: TextStyle(
                    color: Color(0xff014f43),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.grey[100],
                  child: Icon(
                    Icons.bookmark_border,
                    color: Color.fromARGB(179, 236, 228, 228),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 585,
            child: Vlist(),
          )

//           Scaffold(
//             body: pages[_selectedIndex],

//             // TODO: Add bottom navigation bar
//             // 4
//             bottomNavigationBar: BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               // 5
//               showSelectedLabels: false,
//               showUnselectedLabels: false,

//               // TODO: Set selected tab bar
//               // 10
//               currentIndex: _selectedIndex,
// // 11
//               onTap: _onItemTapped,

//               // 6
//               items: <BottomNavigationBarItem>[
//                 const BottomNavigationBarItem(
//                     icon: Icon(Icons.home), label: 'home'),
//                 const BottomNavigationBarItem(
//                     icon: Icon(Icons.list), label: 'list'),
//                 const BottomNavigationBarItem(
//                     icon: Icon(Icons.settings), label: 'Setting'),
//               ],
//             ),
//           )
        ],

        // child: Vlist(),
      ),
    );
  }
}
