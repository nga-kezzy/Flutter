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
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(254, 254, 229, 1),
        fontFamily: 'Roboto_Mono',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              // title: TextStyle(
              //   fontSize: 24,
              //   fontFamily: 'Roboto_Mono'
              // ),
            ),
      ),
      home: CategoriesScreen(),
    );
  }
}
