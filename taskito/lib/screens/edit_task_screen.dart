import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskito/widgets/task_widget.dart';

class EditTask extends StatelessWidget {
  const EditTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
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
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'TASK NAME',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextField(autofocus: true),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'TEAM MEMBER',
                      style: TextStyle(color: Colors.grey),
                    ),
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    child: const Icon(Icons.add,
                                        color: Colors.blue),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          addTask('assets/love.jpg', 'kezzy'),
                          const SizedBox(width: 20),
                          addTask('assets/love.jpg', 'abc'),
                          const SizedBox(width: 20),
                          addTask('assets/love.jpg', 'dcv'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'DESCRIPTION',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const TextField(
                      keyboardType: TextInputType.multiline,
                      autofocus: true,
                      maxLines: null,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'BROARD',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        nameTask(Colors.red.shade100, 'URGENT', Colors.red),
                        const SizedBox(width: 10),
                        nameTask(Colors.green, 'RUNNING', Colors.white),
                        const SizedBox(width: 10),
                        nameTask(
                            Colors.purple.shade100, 'ONGOING', Colors.purple),
                      ],
                    ),
                    const SizedBox(height: 50),
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
    );
  }
}
