import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuffle/models/word.dart';

import '../models/shape_painter.dart';

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
  late List<String> unitStings;

  @override
  void initState() {
    super.initState();
    isPlaying = true;

    word3 = Word(
        eng: 'HAMMER', vi: 'BÚA'); //khai báo biến trục tiếp trong initstate
    codeUnitStrings = word3.eng.split(''); // tách ra từng chữ cái
    unitStings = [];
    print(codeUnitStrings);

    for (int i = 0; i < codeUnitStrings.length; i++) {
      if (unitStings.isEmpty) {
        unitStings.add(codeUnitStrings[i]);
      } else {
        bool flag =
            true; // có nghĩa là cờ này check xem pt muốn thêm vào có trùng vs pt bên trong mảng mới ko
        for (int j = 0; j < unitStings.length; j++) {
          if (codeUnitStrings[i] == unitStings[j]) {
            flag = false;
            break;
          }
        }
        if (flag) {
          unitStings.add(codeUnitStrings[i]);
        }
      }
    }
    print(unitStings);
  }

  Widget build(BuildContext context) {
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
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    foregroundPainter: ShapePainter(),
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
