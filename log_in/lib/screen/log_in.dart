import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

class logIn extends StatefulWidget {
  const logIn({Key? key}) : super(key: key);

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  bool _isLogin = true;

  void _signUp() {
    setState(() {
      // if (_isLogin == false) {
      //   _isLogin = true;
      // } else {
      //   _isLogin = false;
      // }
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              height: 100,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Atharv',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: _signUp,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                        ),
                        _isLogin
                            ? Container(
                                width: 20,
                                child: const Divider(
                                  height: 0,
                                  thickness: 3,
                                  color: Colors.blue,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'or',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: _signUp,
                    child: Container(
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                          !_isLogin
                              ? Container(
                                  width: 20,
                                  child: const Divider(
                                    height: 20,
                                    thickness: 3,
                                    color: Colors.blue,
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _isLogin
                      ? const SizedBox()
                      : const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  _isLogin
                      ? const SizedBox()
                      : const SizedBox(
                          height: 10,
                        ),
                  _isLogin
                      ? const SizedBox()
                      : const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            hintText: 'hay nhap email',
                          ),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: 'What your lovely name',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                      hintText: 'Please enter password',
                    ),
                  ),
                  _isLogin
                      ? const SizedBox()
                      : const SizedBox(
                          height: 10,
                        ),
                  _isLogin
                      ? SizedBox()
                      : const Text(
                          'Enter the password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  _isLogin
                      ? SizedBox()
                      : const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                            hintText: 'Please enter password',
                          ),
                        ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Row(
                children: const [
                  Text(
                    'remember me next time',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 40,
                    bottom: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text('or log in with',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/images/twitter.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
