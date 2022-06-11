import 'package:flutter/material.dart';

Widget historyWidget(String name, String sub_name) {
  return Row(
    children: [
      Container(
        alignment: Alignment(-1, -1),
        width: 50,
        height: 50,
        child: Icon(Icons.star, color: Colors.yellow),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(overflow: TextOverflow.visible),
            ),
            SizedBox(height: 10),
            Text(
              sub_name,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    ],
  );
}
