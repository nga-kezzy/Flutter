import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _status = true;
  bool _islogin = false;

  void _signUp() {
    setState(() {
      _islogin = !_islogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/tempz.png',
                        cacheWidth: 90,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Tempz',
                      style: TextStyle(fontSize: 32),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                _islogin
                    ? const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    : SizedBox(),
                !_islogin
                    ? const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    : SizedBox(),
                !_islogin
                    ? SizedBox(
                        height: 30,
                      )
                    : SizedBox(),
                !_islogin
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/fb.png',
                              cacheHeight: 45,
                              cacheWidth: 35,
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 80,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/gg.png',
                              cacheHeight: 45,
                              cacheWidth: 45,
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 80,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/apple.png',
                              cacheHeight: 45,
                              cacheWidth: 35,
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
                const SizedBox(
                  height: 25,
                ),
                !_islogin
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Or register with email',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              )),
                        ],
                      )
                    : SizedBox(),
                SizedBox(
                  height: 15,
                ),
                _islogin
                    ? Text(
                        'Enter your email and password',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  height: 10,
                ),
                !_islogin
                    ? Column(
                        children: const [
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                            ),
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                              decoration: InputDecoration(
                                hintText: 'password',
                              ),
                              keyboardType: TextInputType.text),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )
                    : SizedBox(),
                _islogin
                    ? Column(
                        children: [
                          TextField(
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextField(
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: const TextStyle(fontSize: 18),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              prefixIcon: const Icon(
                                Icons.lock_outlined,
                              ),
                              suffixIcon: const Icon(
                                Icons.visibility_outlined,
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlutterSwitch(
                      activeColor: Colors.green,
                      width: 40.0,
                      height: 20.0,
                      valueFontSize: 10,
                      toggleSize: 15,
                      showOnOff: true,
                      value: _status,
                      onToggle: (val) {
                        setState(() {
                          _status = val;
                        });
                      },
                    ),
                    Text('Remember'),
                    _islogin ? Text('Forgot password ?') : SizedBox(),
                  ],
                ),
                _islogin
                    ? Container(
                        padding: const EdgeInsets.only(top: 40, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize: const Size(250, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                                child: const Text(
                                  'Log in',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
                !_islogin
                    ? Container(
                        padding: const EdgeInsets.only(top: 40, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize: const Size(250, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
                _islogin
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('or log in with',
                              style: TextStyle(
                                fontSize: 18,
                              )),
                        ],
                      )
                    : SizedBox(),
                _islogin
                    ? Container(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/images/fb.png',
                                cacheHeight: 45,
                                cacheWidth: 35,
                              ),
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              onTap: _signUp,
                              child: Container(
                                width: 80,
                                height: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/gg.png',
                                  cacheHeight: 45,
                                  cacheWidth: 45,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: 80,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/images/apple.png',
                                cacheHeight: 45,
                                cacheWidth: 35,
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
                _islogin
                    ? Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'New to tapz?',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              ' Sign in',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.orange),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
                InkWell(
                  onTap: _signUp,
                  child: !_islogin
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('skip for now',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ],
                        )
                      : SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
