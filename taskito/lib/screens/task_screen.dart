import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:intl/intl.dart';
import 'package:taskito/widgets/task_widget.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  DateTime now = DateTime.now();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCEECF5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              left: 15,
              top: 20,
              right: 15,
            ),
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Task',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/love.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DateFormat.yMMMd().format(now),
                            ),
                            const Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w800),
                            ),
                          ]),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade800,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                'Add task',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          taskWidget('MON', '10'),
                          taskWidget('TUE', '11'),
                          taskWidget('WED', '12'),
                          taskWidget('THU', '13'),
                          taskWidget('FRI', '14'),
                          taskWidget('SAT', '15'),
                          taskWidget('SUN', '16'),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.grey,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    listTask(
                        'URGENT',
                        Colors.orange,
                        'New Web Ui Design Project',
                        'Website UI Design for \$500'),
                    const SizedBox(height: 20),
                    listTask(
                        'RUNNING',
                        Colors.green,
                        'Application Design Meeting',
                        'Website UI Design for \$500'),
                    const SizedBox(height: 20),
                    listTask('ONGOING', Colors.purple, 'Web Design Meeting',
                        'Website UI Design for \$500'),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.folder),
            title: Text(''),
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.add),
            title: Text(''),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.face),
            title: const Text(''),
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.chat),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
