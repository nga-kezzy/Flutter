import 'package:flutter/material.dart';

import './categories_screen.dart';
import 'package:food/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CategoriesScreen(),
    );
  }
}
