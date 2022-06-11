import 'package:flutter/material.dart';
import 'package:taskito/widgets/history_widget.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 15),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: const [
                  Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 35,
                  ),
                  Text(
                    'History',
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
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  historyWidget(
                      'Devignedge App edited to Devignedge App Disign',
                      '10 sep, 2020 | 10:30 AM by Mahmudul'),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                  historyWidget(
                      'jonhn mentinod Mahmudul check this one imidiatwly',
                      '10 sep, 2020 | 10:30 AM '),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                  historyWidget(
                      'Uploaded 4 photo', '10 sep, 2020 | 10:30 AM  by Lethur'),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                  historyWidget('Sheared a link to other member',
                      '10 sep, 2020 | 20:30 AM'),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                  historyWidget(
                      'Devignedge App edited to Devignedge App Disign',
                      '10 sep, 2020 | 10:30 AM'),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                  historyWidget(
                      'jonhn mentinod Mahmudul check this one imidiatwly',
                      '10 sep, 2020 | 10:30 AM'),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                  historyWidget(
                      'Uploaded 4 photo', '10 sep, 2020 | 10:30 AM  by Lethur'),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
