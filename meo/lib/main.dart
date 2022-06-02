import 'package:flutter/material.dart';
import './screen/home_screen.dart';
import './config/theme_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Food',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: DarkTheme.white,
                displayColor: DarkTheme.white,
              )),
      home: MyHomePage(),
    );
  }
}
