import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get fontWeight => null;

  get padding => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffd8d8d8)),
                  child: const FlutterLogo(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    'Hello\nWelcome to Flutter',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: const TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                          labelText: "USER NAME",
                          labelStyle: TextStyle(
                              color: Color(0xff888888), fontSize: 18))),
                ),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: TextField(
                          style: TextStyle(fontSize: 18),
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "PASSWORD",
                              labelStyle: TextStyle(
                                  color: Color(0xff888888), fontSize: 18))),
                    ),
                    Text('Show',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        const Text('SIGN IN', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Container(
                  child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              print('bạn muốn đăng ký tài khoản mới?');
                            },
                            child: const Text('Sign up',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)),
                          ),
                          InkWell(
                            onTap: () {
                              print('Bạn muốn lấy lại mật khẩu?');
                            },
                            child: const Text('Fogot password?',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
