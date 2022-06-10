import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: const [
        VerticalDivider(thickness: 2, color: Colors.red),
        Text('home')
      ]),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.folder),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.add),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.face),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.chat),
              title: Text(''),
            ),
          ]),
    );
  }
}
