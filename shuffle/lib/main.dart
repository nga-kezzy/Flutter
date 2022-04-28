import 'package:flutter/material.dart';

import 'package:shuffle/screens/home_screen.dart';
import './screens/play_screen.dart';
import './screens/summary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: sumMary(),
    );
  }
}
