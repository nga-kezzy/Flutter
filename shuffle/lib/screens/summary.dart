import 'package:flutter/material.dart';

class sumMary extends StatelessWidget {
  const sumMary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Colors.blue[900],
                height: 280,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Bạn làm tốt lắm',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '3',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Điểm',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 516,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                            top: 20,
                          ),
                          child: const Text(
                            'Báo cáo nội dung',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                      thickness: 2,
                      indent: 20,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 350,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    width: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    width: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    width: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    width: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    width: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    width: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 45,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(230, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Thử lại lần nữa',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            Positioned(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Icon(Icons.share,
                                        color: Colors.white, size: 30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            Positioned(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Icon(Icons.east,
                                        color: Colors.white, size: 30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
