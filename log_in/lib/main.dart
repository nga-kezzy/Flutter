import 'package:flutter/material.dart';

import './screen/log_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Food',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        primarySwatch: Colors.blue,
      ),
      home: logIn(),
    );
  }
}
