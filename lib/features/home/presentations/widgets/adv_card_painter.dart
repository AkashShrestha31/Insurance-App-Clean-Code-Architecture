import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class ADVCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffFF963D).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(0, 0, size.width, size.height),
            bottomRight: Radius.circular(size.width * 0.02292264),
            bottomLeft: Radius.circular(size.width * 0.02292264),
            topLeft: Radius.circular(size.width * 0.02292264),
            topRight: Radius.circular(size.width * 0.02292264)),
        paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(const Offset(0, 0),
        Offset(size.width * 0.2114521, size.height * 1.788550), [
      const Color(0xffE05057).withOpacity(1),
      const Color(0xffB02A30).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(0, 0, size.width, size.height),
            bottomRight: Radius.circular(size.width * 0.02292264),
            bottomLeft: Radius.circular(size.width * 0.02292264),
            topLeft: Radius.circular(size.width * 0.02292264),
            topRight: Radius.circular(size.width * 0.02292264)),
        paint1Fill);
    Path path = Path();
    final Paint paint = Paint();
    // Path 1 Fill
    paint.color = ui.Color.fromARGB(255, 213, 208, 208);
    path.moveTo(size.width * 0.73, size.height * 1.21);
    path.lineTo(size.width * 1.13, size.height * 0.39);
    path.lineTo(size.width * 1.21, size.height * 0.57);
    path.lineTo(size.width * 0.81, size.height * 1.39);
    path.lineTo(size.width * 0.73, size.height * 1.21);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
