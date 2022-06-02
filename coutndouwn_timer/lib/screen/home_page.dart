import 'dart:async';

import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/button_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int seconds = 60;
  bool _isOnClick = false;
  Timer? timer;
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
        setState(() {
          seconds = 60;
          _isOnClick = false;
        });
      } else {
        setState(() => seconds--);
      }
    });
  }

  Widget buildButtons() {
    return ButtonWidget(
        text: 'Start Timer',
        color: Colors.blue,
        backgroundColor: Colors.white,
        isOnClick: _isOnClick,
        onClicked: () {
          setState(() => _isOnClick = true);
          startTimer();
        });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003366),
      appBar: AppBar(
        title: Text('Count douwn timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildTimers(),
            const SizedBox(
              height: 100,
            ),
            buildButtons()
          ],
        ),
      ),
    );
  }
}
