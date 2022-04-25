import 'package:flutter/material.dart';

// FOR PAINTING CIRCLES
class ShapePainter extends CustomPainter {
  final double x;
  final double y;
  final double z;
  ShapePainter(this.x, this.y, this.z);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(Offset(x, y), z, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
