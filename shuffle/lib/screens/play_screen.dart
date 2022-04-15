import 'package:flutter/material.dart';

import '../models/shape_painter.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
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
                height: 150,
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
                  color: Colors.white,
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
