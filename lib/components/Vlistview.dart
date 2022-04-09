import 'dart:convert';

import 'package:task1/components/hlistview.dart';
import 'package:task1/models/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Vlist extends StatelessWidget {
  const Vlist({Key? key}) : super(key: key);

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
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // const Hlist(),
                      Card(
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: Image(
                                  image: NetworkImage(
                                      items[index].imageUrl.toString()),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                              items[index].name.toString(),
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.visible),
                                        ),
                                        Container(
                                          width: 10,
                                          height: 10,
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
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(items[index].price.toString()),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ],
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
