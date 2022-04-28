import 'package:flutter/material.dart';

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
  List<Position> postions = [];
  List<String> render = [];
  List<Word> word = [
    Word(eng: 'CAT', vi: 'Mèo'),
    Word(eng: 'HOME', vi: 'Ngôi nhà'),
    Word(eng: 'LEFT', vi: 'Trái'),
    Word(eng: 'RIGHT', vi: 'Phải'),
    Word(eng: 'STAR', vi: 'Ngôi sao'),
    Word(eng: 'MUSIC', vi: 'Âm nhạc'),
    Word(eng: 'KEY BOARD', vi: 'Bàn phím'),
  ];

  @override
  void initState() {
    super.initState();
    isPlaying = true;
    word3 = Word(eng: 'HOME', vi: 'Ngôi nhà');
    replayRandom();
  }

  void replayRandom() {
    codeUnitStrings = word3.eng.split(''); // tách ra từng chữ cái
    render = codeUnitStrings.map((e) => '_').toList();
    print(render);
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
      // top
      Position(10, null, 350 / 2 - 25, null),
      Position(30, 350 / 2 - 95, null, null),
      Position(80, 350 / 2 - 145, null, null),
      // left
      Position(350 / 2 - 25, 5, null, null),
      Position(null, 350 / 2 - 145, null, 80),
      Position(null, 350 / 2 - 95, null, 30),
      // bottom
      Position(null, null, 350 / 2 - 25, 10),
      Position(null, null, 350 / 2 - 95, 30),
      Position(null, null, 350 / 2 - 145, 80),
      // right
      Position(350 / 2 - 25, null, 5, null),
      Position(80, null, 350 / 2 - 145, null),
      Position(30, null, 350 / 2 - 95, null),
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
                  children: [
                    Text(
                      '${render.join(" ")}',
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text(
                        '${word3.vi}',
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Container(
                  height: 350,
                  width: 350,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      for (int i = 0; i < postions.length; i++)
                        Positioned(
                          width: 50,
                          height: 50,
                          top: postions[i].top,
                          right: postions[i].right,
                          bottom: postions[i].bottom,
                          left: postions[i].left,
                          child: InkWell(
                            onTap: () {
                              if (render[0] == '_') {
                                setState(() {
                                  render[0] = cuoiString[i];
                                });
                              } else {
                                for (var j = 0; j < render.length; j++) {
                                  if (render[j] == '_') {
                                    setState(() {
                                      render[j] = cuoiString[i];
                                    });
                                    break;
                                  }
                                }
                              }
                              if (render[render.length - 1] != '_') {
                                if (render.join('') == word3.eng) {
                                  print('true');
                                  setState(() {
                                    unitStrings = [];
                                    cuoi = [];
                                    cuoiString = [];
                                    postions = [];
                                    word3 = Word(eng: 'WATER', vi: 'Nước');
                                    replayRandom();
                                  });
                                } else {
                                  print('false');
                                  setState(() {
                                    unitStrings = [];
                                    cuoi = [];
                                    cuoiString = [];
                                    postions = [];
                                    word3 = Word(eng: 'CAT', vi: 'Mèo');
                                    replayRandom();
                                  });
                                }
                              }
                            },
                            child: Container(
                              width: 66,
                              height: 66,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green[300],
                              ),
                              child: Center(
                                child: Text(
                                  '${cuoiString[i]}',
                                  style: const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500),
                                ),
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
