import 'dart:async';

import 'package:flutter/material.dart';
import '../screen/button_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int seconds = 10;
  bool _isOnClick = false;
  Timer? timer;
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
        setState(() {
          seconds = 10;
          _isOnClick = false;
        });
      } else {
        setState(() => seconds--);
      }
    });
  }

  void play() {
    setState(() => {_isOnClick = !_isOnClick});
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
            _isOnClick ? SizedBox() : buildButtons(),
            !_isOnClick
                ? SizedBox()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: const Text('Pause',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22))),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        child: const Text('Cancel',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22))),
                        onPressed: () {},
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
