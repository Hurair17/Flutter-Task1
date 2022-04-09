import 'package:flutter/material.dart';
import 'package:task1/screens/login.dart';
// import 'screens/login.dart';
import 'screens/home.dart';

void main() {
  runApp(const BasicUI());
}

class BasicUI extends StatelessWidget {
  const BasicUI({Key? key}) : super(key: key);
  static Icon icons_back = Icon(Icons.arrow_back_ios_new);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: ,
      title: 'Basic UI',
      home: const Login(),
    );
  }
}
