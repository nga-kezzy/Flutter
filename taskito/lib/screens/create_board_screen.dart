import 'package:flutter/material.dart';

class CreateBoard extends StatefulWidget {
  const CreateBoard({Key? key}) : super(key: key);

  @override
  State<CreateBoard> createState() => _CreateBoardState();
}

class _CreateBoardState extends State<CreateBoard> {
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
                  padding: EdgeInsets.only(top: 40, left: 15),
                  child: Row(
                    children: const [
                      Icon(Icons.chevron_left, color: Colors.white, size: 35),
                      Text(
                        'Create board',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'BOARD NAME',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const TextField(
                        autofocus: true,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'DESCRIPTION',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const TextField(
                        autofocus: true,
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Type',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          Text('Private'),
                          Radio(
                            value: 2,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          Text('Public'),
                          Radio(
                            value: 2,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          Text('Secrect'),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'ADD TASK',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Select task', style: TextStyle(fontSize: 16)),
                          Icon(Icons.expand_more),
                        ],
                      ),
                      Divider(thickness: 1, color: Colors.grey),
                      const SizedBox(height: 30),
                      const Text(
                        'MEMBER',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Select member', style: TextStyle(fontSize: 16)),
                          Icon(
                            Icons.add,
                          )
                        ],
                      ),
                      Divider(thickness: 1, color: Colors.grey),
                      const SizedBox(height: 50),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 40),
                          ),
                          child: const Text('Create new board ',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {},
                        ),
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
