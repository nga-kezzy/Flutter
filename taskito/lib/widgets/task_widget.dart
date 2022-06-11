import 'package:flutter/material.dart';

Widget taskWidget(String txt, String number) {
  return Container(
    alignment: Alignment.center,
    height: 30,
    width: 45,
    child: Column(
      children: [
        Text(
          txt,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 10),
        Text(
          number,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget listTask(String title, Color cl, String name, String sub_name) {
  return Container(
    height: 160,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, color: cl),
        ),
        const SizedBox(height: 5),
        const Divider(thickness: 1, color: Colors.grey),
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 35,
              child: VerticalDivider(
                thickness: 2,
                color: cl,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  sub_name,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Icon(Icons.timer, color: Colors.blue),
            Text(' 10 - 11 AM'),
            SizedBox(width: 20),
            Icon(Icons.group, color: Colors.blue),
            Text(' 2 Persons'),
          ],
        ),
      ],
    ),
  );
}

Widget addTask(String imgname, String name) {
  return Column(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(imgname), fit: BoxFit.cover),
        ),
      ),
      const SizedBox(height: 5),
      Text(name),
    ],
  );
}

Widget nameTask(Color cl, String data, Color txtcl) {
  return Container(
    height: 30,
    width: 80,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: cl,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(data, style: TextStyle(color: txtcl)),
  );
}
