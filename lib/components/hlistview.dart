import 'dart:convert';

import 'package:flutter/rendering.dart';
import 'package:task1/models/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Hlist extends StatelessWidget {
  const Hlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Text("${data.error}");
          } else if (data.hasData) {
            var items = data.data as List<readJsonData>;

            return ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white60,
                      width: 200,
                      height: 200,
                      child: Card(
                        color: Colors.white70,
                        // elevation: 5,
                        // margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 180,
                              height: 130,
                              child: Image(
                                image: NetworkImage(
                                    items[index].imageUrl.toString()),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                              items[index].name.toString(),
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w300,
                                              ),
                                              // overflow: TextOverflow.ellipsis
                                              overflow: TextOverflow.visible),
                                        ),
                                        // Spacer(),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          color: Colors.grey[100],
                                          child: Icon(
                                            Icons.bookmark_border,
                                            color: Color.fromARGB(
                                                179, 236, 228, 228),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 13,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        items[index].price.toString(),
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 16,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<readJsonData>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('json/readJsonData.json');
    final list = jsonDecode(jsondata) as List<dynamic>;

    return list.map((e) => readJsonData.fromJson(e)).toList();
  }
}
