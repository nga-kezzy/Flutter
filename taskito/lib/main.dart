import 'package:flutter/material.dart';
import 'package:taskito/screens/add_task_screen.dart';
import 'package:taskito/screens/task_screen.dart';
import 'package:taskito/screens/test.dart';
import './screens/login_screen.dart';
import './screens/dashboard_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddTask(),
    );
  }
}
