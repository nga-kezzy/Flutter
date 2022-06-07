import 'dart:async';
import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int seconds = 60;

  bool _status = false;
  Timer? timer;

  void play() {
    setState(() => {_status = !_status});
  }

  void starTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
        setState(() {
          seconds = 60;
          _status = false;
        });
      } else {
        setState(() => seconds--);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            // image: DecorationImage( // sử dụng hình ảnh làm hình nền
            //   image: AssetImage("assets/hinhnen.jpg"),
            //   fit: BoxFit.cover,
            // ),
            gradient: LinearGradient(
                // sử dụng dải màu làm nền
                colors: [Colors.pink, Colors.cyan],
                begin: Alignment(-1, 1),
                end: Alignment(1, -1),
                tileMode: TileMode.clamp),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    ' Ngà Kezzy',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(height: 200),
                Text('$seconds',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 200,
                    )),
                const SizedBox(
                  height: 150,
                ),
                _status
                    ? const SizedBox()
                    : ElevatedButton(
                        child: const Text(
                          'Start Timer',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          setState(() => _status = true);
                          starTimer();
                        },
                      ),
                !_status
                    ? const SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            child: const Text(
                              ' Pause',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              timer!.cancel();
                              setState(() {
                                _status = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          ElevatedButton(
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              timer!.cancel();
                              setState(() {
                                seconds = 60;
                                _status = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
