import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: '15%', percent: 15, color: Colors.red),
    Data(name: '13%', percent: 13, color: Colors.blue),
    Data(name: '28%', percent: 28, color: Colors.green),
    Data(name: '54%', percent: 54, color: Colors.grey),
  ];
}

class Data {
  final String name;
  final double percent;
  final Color color;
  Data({required this.name, required this.percent, required this.color});
}
