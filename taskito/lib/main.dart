import 'package:flutter/material.dart';
import 'package:taskito/screens/add_task_screen.dart';
import 'package:taskito/screens/add_team_member_screen.dart';
import 'package:taskito/screens/connectinon_screen.dart';
import 'package:taskito/screens/create_board_screen.dart';
import 'package:taskito/screens/edit_task_screen.dart';
import 'package:taskito/screens/history_screen.dart';
import 'package:taskito/screens/inviter_member_screen.dart';
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
      home: const CreateBoard(),
    );
  }
}
