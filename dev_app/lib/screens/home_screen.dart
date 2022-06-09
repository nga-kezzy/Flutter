import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget callList(double wd, String text) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 35,
        width: wd,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.blue),
            borderRadius: BorderRadius.circular(25)),
        child: Text(text,
            style: const TextStyle(color: Colors.blue, fontSize: 16)),
      ),
    );
  }

  Widget callday(Color cl, String txt1, String txt2, String txt3) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: cl,
      ),
      width: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txt1,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            txt2,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                txt3,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 80,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/love.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Amy Adams',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'PROJECT MANAGER',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF555555),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            '165 day togetther ',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF555555)),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25),
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          callday(Colors.blue.shade700,
                              'Availible annual leave', '16 days', 'Schedule'),
                          SizedBox(width: 15),
                          callday(Colors.orange.shade800, 'Days before payday',
                              '22 days', 'More'),
                          SizedBox(width: 15),
                          callday(
                              Colors.blue.shade400, 'Q-icoins', '348', 'Spend'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    Text('Apdatation', style: TextStyle(fontSize: 22)),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  height: 150,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[900],
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LinearPercentIndicator(
                            width: 100,
                            lineHeight: 10.0,
                            percent: 0.75,
                            trailing: const Text('75%',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            progressColor: Colors.green,
                          ),
                          const Text(
                            'We\'re getting close!',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: const Size(120, 40)),
                            child: const Text('Continue',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          const Text(
                            'Complote by April 20',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Expanded(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/rocket.png"),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    Text('Feed', style: TextStyle(fontSize: 25)),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  // color: Colors.green,
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          callList(45, 'All'),
                          const SizedBox(
                            width: 12,
                          ),
                          callList(90, 'Holidays'),
                          const SizedBox(
                            width: 12,
                          ),
                          callList(80, 'Meeting'),
                          const SizedBox(
                            width: 12,
                          ),
                          callList(70, 'Events'),
                          const SizedBox(
                            width: 12,
                          ),
                          callList(120, 'Annual Leave'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 3),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/avt.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Alex Morgan'),
                          const SizedBox(width: 10),
                          const Text('1 min ago '),
                          const Icon(Icons.more_vert_outlined),
                          const Text('Events'),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                                'Hi guys! We have good news for you :) Workshop #3 will take place tomorrow at 5 pm! @robsymons and @wlizabethhbanks well perform for us',
                                style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.visibility),
                          Text('19 views'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Project',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Team',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
