import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blue,
                        size: 100,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Amy Adams',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            'PROJECT MANAGER',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            '165 day togetther ',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(width: 15),
                              Icon(Icons.notifications,
                                  color: Colors.blue, size: 30)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.blue[700],
                            ),
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Avalible annual leave',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  '16 days',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Schedule',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.orange[800],
                            ),
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Days before payday',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  '22 days',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.blue[400],
                            ),
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Q-icoins',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  '348 ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Spend',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: const [
                    Text('Apdatation', style: TextStyle(fontSize: 22)),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
