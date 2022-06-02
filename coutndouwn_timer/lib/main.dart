import 'package:flutter/material.dart';
import './screen/home_page.dart';
import './screen/button_widget.dart';

void main() => runApp(MyApp());
int maxseconds = 60;
int seconds = maxseconds;

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

Widget buildButtons() {
  return ButtonWidget(
      text: 'Start Timer',
      color: Colors.blue,
      backgroundColor: Colors.white,
      onClicked: () {});
}

Widget buildTimers() {
  return Text(
    '$seconds',
    style: const TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
