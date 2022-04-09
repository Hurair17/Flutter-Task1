import 'package:flutter/material.dart';
import 'package:task1/components/hlistview.dart';
import 'package:task1/components/Vlistview.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEDEEEE),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Row(
                    children: [
                      Text(
                        'Warszawa',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 222, 234, 234),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down_sharp),
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Icon(Icons.book_online_outlined),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                // border:
                //     OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.search),
                labelText: 'Search Meseums',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Visited",
                    style: TextStyle(
                        color: Color(0xff014343),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(color: Color(0xff014f43), fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: const Hlist(),
            ),
            TextButton(
              onPressed: () {
                const Vlist();
              },
              child: Text(
                'News and Exhibitions',
                style: TextStyle(
                  color: Color(0xff014f43),
                  fontSize: 20,
                ),
              ),
            ),

            // SizedBox(height: 5),
            Container(
              height: 180,
              child: const Vlist(),
            )
          ],
        ),
      ),
    );
  }
}
