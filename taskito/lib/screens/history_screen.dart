import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.chevron_left),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
