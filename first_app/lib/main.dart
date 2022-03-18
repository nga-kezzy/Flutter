// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  // ignore: non_constant_identifier_names

}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(() {
        _questionindex = _questionindex + 1;
      });

      print(_questionindex);
    }

    var questions = [
      'what\'s your favorine color',
      'what\'s your favorine animarl'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HELLO WORLD'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionindex],
            ),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
