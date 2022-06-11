import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskito/widgets/task_widget.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 15,
                  ),
                  child: Container(
                    height: 60,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.chevron_left,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          'Add Task',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TASK NAME'),
                      const TextField(
                        autofocus: true,
                        cursorColor: Colors.grey,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('TEAM MEMBER'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                DottedBorder(
                                  borderType: BorderType.Circle,
                                  radius: Radius.circular(10),
                                  color: Colors.purple,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      child:
                                          Icon(Icons.add, color: Colors.blue),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            addTask('assets/love.jpg', 'kezzy'),
                            SizedBox(width: 20),
                            addTask('assets/love.jpg', 'abc'),
                            SizedBox(width: 20),
                            addTask('assets/love.jpg', 'dcv'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'DATE',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'May 01, 2020',
                              ),
                              Icon(Icons.calendar_month, color: Colors.purple),
                            ],
                          ),
                          const Divider(thickness: 1, color: Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'START TIME',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text('10:00 AM'),
                                      SizedBox(width: 40),
                                      Icon(Icons.expand_more)
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('START TIME',
                                      style: TextStyle(color: Colors.grey)),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text('10:00 AM'),
                                      SizedBox(width: 40),
                                      Icon(Icons.expand_more)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      const Text(
                        'DESCRIPTION',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const TextField(
                        autofocus: true,
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'BROARD',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          nameTask(Colors.red.shade100, 'URGENT', Colors.red),
                          const SizedBox(width: 10),
                          nameTask(Colors.green, 'RUNNING', Colors.white),
                          const SizedBox(width: 10),
                          nameTask(
                              Colors.purple.shade100, 'ONGOING', Colors.purple),
                          const SizedBox(width: 10),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(10),
                            color: Colors.purple,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                height: 25,
                                width: 25,
                                child: Icon(Icons.add,
                                    color: Colors.blue, size: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 50),
                        ),
                        child: Text('Done', style: TextStyle(fontSize: 20)),
                        onPressed: () {},
                      ),
                    ],
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
