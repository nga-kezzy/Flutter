import 'package:flutter/material.dart';

Widget addListTeam(String name, String sub_name) {
  return Row(
    children: [
      SizedBox(
        width: 10,
      ),
      Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/love.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 5),
            Text(
              sub_name,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
