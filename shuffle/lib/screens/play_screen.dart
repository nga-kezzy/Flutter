import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuffle/models/position.dart';
import 'package:shuffle/models/word.dart';
import 'dart:math';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  bool isPlaying = false;
  // Word word1 = Word(eng: 'HAMMER', vi: 'BÚA');  // khái báo biến  theo cách 1
  // late Word word2;  // khái báo biến theo cách 2
  late Word word3; // khái báo biến  theo cách 2
  late List<String> codeUnitStrings;
  late List<String> unitStrings;
  late List<String> stringRandom;
  late int lengthRandom;
  List<int> cuoi = [];
  List<String> cuoiString = [];
  List<int> moi = [];
  List<String> answer = [];
  List<Position> postions = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    isPlaying = true;

    word3 = Word(
        eng: 'HAMMER', vi: 'BÚA'); //khai báo biến trục tiếp trong initstate
    codeUnitStrings = word3.eng.split(''); // tách ra từng chữ cái
    unitStrings = [];
    print(codeUnitStrings);

    for (int i = 0; i < codeUnitStrings.length; i++) {
      if (unitStrings.isEmpty) {
        unitStrings.add(codeUnitStrings[i]);
      } else {
        bool flag =
            true; // có nghĩa là cờ này check xem pt muốn thêm vào có trùng vs pt bên trong mảng mới ko
        for (int j = 0; j < unitStrings.length; j++) {
          if (codeUnitStrings[i] == unitStrings[j]) {
            flag = false;
            break;
          }
        }
        if (flag) {
          unitStrings.add(codeUnitStrings[i]);
        }
      }
    }
    print(unitStrings);

    // random ra các chữ cho đủ 12 từ

    List<String> chu = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
    ];

    int dem = 12 - unitStrings.length;

    final random = new Random();

    for (int i = 0; i < dem; i++) {
      int a = random.nextInt(chu.length);
      cuoi.add(a);
    }
    print(cuoi);
    for (int i = 0; i < cuoi.length; i++) {
      cuoiString.add(chu[cuoi[i]]);
    }

    for (int i = 0; i < unitStrings.length; i++) {
      cuoiString.add(unitStrings[i]);
    }
    print(cuoiString);
  }

  Widget build(BuildContext context) {
    postions = [
      Position(null, null, MediaQuery.of(context).size.width / 2 - 30, null),
      Position(40, MediaQuery.of(context).size.width / 2 - 110, null, null),
      Position(110, MediaQuery.of(context).size.width / 2 - 180, null, null),
      Position(450 / 2 - 30, null, 0, null),
      Position(null, MediaQuery.of(context).size.width / 2 - 110, null, 40),
      Position(null, MediaQuery.of(context).size.width / 2 - 180, null, 110),
      Position(450 / 2 - 30, null, null, null),
      Position(40, null, MediaQuery.of(context).size.width / 2 - 110, null),
      Position(110, null, MediaQuery.of(context).size.width / 2 - 180, null),
      Position(null, null, MediaQuery.of(context).size.width / 2 - 30, 0),
      Position(null, null, MediaQuery.of(context).size.width / 2 - 110, 40),
      Position(null, null, MediaQuery.of(context).size.width / 2 - 180, 110)
    ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 204, 1),
          ),
          child: Column(
            children: [
              Container(
                height: 70,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    padding: const EdgeInsets.only(
                      right: 15,
                      top: 20,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.wb_incandescent_outlined,
                          size: 40,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_outlined,
                          size: 40,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Hiện chữ đã chọn'),
                    Text('Chữ tiếng việt'),
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 450,
                  color: Colors.yellow,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      for (int i = 0; i < postions.length; i++)
                        Positioned(
                          top: postions[i].top,
                          right: postions[i].right,
                          bottom: postions[i].bottom,
                          left: postions[i].left,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green[400],
                            ),
                            child: Center(
                              child: Text(
                                '${cuoiString[i]}',
                                style: const TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
