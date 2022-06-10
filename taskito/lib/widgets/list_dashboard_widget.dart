import 'package:flutter/material.dart';

Widget ListDashboard(String nameicon, String name, String number, Color color) {
  return Container(
    height: 60,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xFFCEECF5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(nameicon,
              cacheHeight: 20, cacheWidth: 20, color: color),
        ),
        Text(name),
        Text(number),
      ],
    ),
  );
}
