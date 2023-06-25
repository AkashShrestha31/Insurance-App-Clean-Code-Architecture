import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BannerCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.9728997, size.height * 0.9299065),
        Offset(size.width * 0.06014986, size.height * -6.663645),
        [const Color(0xffF58220).withOpacity(1), const Color(0xffFFA75C).withOpacity(1)],
        [0, 1]);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.02710027, size.height * 0.02336449,
                size.width * 0.9457995, size.height * 0.9065421),
            bottomRight: Radius.circular(size.width * 0.02168022),
            bottomLeft: Radius.circular(size.width * 0.02168022),
            topLeft: Radius.circular(size.width * 0.02168022),
            topRight: Radius.circular(size.width * 0.02168022)),
        paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.8035230, size.height * 0.6845794),
        size.width * 0.2479675, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
