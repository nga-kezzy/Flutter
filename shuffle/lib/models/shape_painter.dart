import 'package:flutter/material.dart';

// FOR PAINTING CIRCLES
class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(const Offset(220, 0), 35, paint); //top
    canvas.drawCircle(const Offset(135, 25), 35, paint);
    canvas.drawCircle(const Offset(70, 90), 35, paint);
    canvas.drawCircle(const Offset(40, 175), 35, paint); // left
    canvas.drawCircle(const Offset(75, 255), 35, paint);
    canvas.drawCircle(const Offset(135, 320), 35, paint);
    canvas.drawCircle(const Offset(220, 350), 35, paint); //bottom
    canvas.drawCircle(const Offset(305, 325), 35, paint);
    canvas.drawCircle(const Offset(360, 255), 35, paint);
    canvas.drawCircle(const Offset(390, 175), 35, paint); //right
    canvas.drawCircle(const Offset(370, 90), 35, paint);
    canvas.drawCircle(const Offset(305, 30), 35, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
