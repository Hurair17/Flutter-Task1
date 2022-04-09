import 'package:flutter/foundation.dart';

class readJsonData {
  int? id;
  String? name;
  String? category;
  String? imageUrl;
  String? oldprice;
  String? price;

  readJsonData(
      {this.id,
      this.name,
      this.category,
      this.imageUrl,
      this.oldprice,
      this.price});

  readJsonData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    imageUrl = json['imageUrl'];
    oldprice = json['oldprice'];
    price = json['price'];
  }
}
