
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class CardCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.color = const Color(0xffF7F8F9).withOpacity(1.0);
canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.06896552,size.height*0.02890173,size.width*0.8620690,size.height*0.8843931),bottomRight: Radius.circular(size.width*0.05517241),bottomLeft:  Radius.circular(size.width*0.05517241),topLeft:  Radius.circular(size.width*0.05517241),topRight:  Radius.circular(size.width*0.05517241)),paint0Fill);

Path path_1 = Path();
    path_1.moveTo(108.354,129.999);
    path_1.cubicTo(106.718,131.344,105.435,133.111,104.756,135.153);
    path_1.cubicTo(104.378,136.248,104.177,137.443,104.177,138.663);
    path_1.lineTo(104.177,151.934);
    path_1.cubicTo(104.177,153.079,103.246,154,102.088,154);
    path_1.cubicTo(100.931,154,100,153.079,100,151.934);
    path_1.lineTo(100,138.663);
    path_1.cubicTo(100,134.63,101.585,130.945,104.152,128.231);
    path_1.cubicTo(105.913,126.364,108.153,124.92,110.669,124.123);
    path_1.cubicTo(112.028,123.675,113.412,124.671,113.412,126.065);
    path_1.cubicTo(113.412,126.962,112.833,127.733,111.977,128.032);
    path_1.cubicTo(110.644,128.431,109.411,129.128,108.354,129.999);
    path_1.close();

Paint paint1Fill = Paint()..style=PaintingStyle.fill;
paint1Fill.color = Colors.white.withOpacity(1.0);
canvas.drawPath(path_1,paint1Fill);

Path path_2 = Path();
    path_2.moveTo(131,138.564);
    path_2.cubicTo(131.05,146.954,124.156,153.9,115.676,153.975);
    path_2.cubicTo(115.625,153.975,115.55,153.975,115.5,153.975);
    path_2.cubicTo(111.549,153.975,108.354,150.788,108.354,146.879);
    path_2.lineTo(108.354,138.763);
    path_2.cubicTo(108.354,138.738,108.354,138.688,108.354,138.663);
    path_2.cubicTo(108.354,134.58,111.851,131.294,116.028,131.593);
    path_2.cubicTo(119.576,131.841,122.445,134.705,122.671,138.215);
    path_2.cubicTo(122.822,140.63,121.74,142.821,120.004,144.191);
    path_2.cubicTo(118.67,145.261,116.657,144.265,116.657,142.572);
    path_2.cubicTo(116.657,141.95,116.934,141.377,117.412,140.979);
    path_2.cubicTo(118.117,140.406,118.544,139.535,118.519,138.589);
    path_2.cubicTo(118.469,137.045,117.211,135.775,115.651,135.701);
    path_2.cubicTo(113.914,135.626,112.48,136.995,112.48,138.688);
    path_2.cubicTo(112.48,138.713,112.48,138.763,112.48,138.788);
    path_2.lineTo(112.48,146.68);
    path_2.cubicTo(112.48,148.473,113.965,149.942,115.776,149.892);
    path_2.cubicTo(115.802,149.892,115.852,149.892,115.877,149.892);
    path_2.cubicTo(121.639,149.693,126.395,145.162,126.798,139.46);
    path_2.cubicTo(127.15,134.157,123.778,129.576,118.997,128.032);
    path_2.cubicTo(118.142,127.758,117.563,126.987,117.563,126.115);
    path_2.lineTo(117.563,126.04);
    path_2.cubicTo(117.563,124.671,118.897,123.675,120.23,124.098);
    path_2.cubicTo(126.445,126.04,130.949,131.767,131,138.564);
    path_2.close();

Paint paint2Fill = Paint()..style=PaintingStyle.fill;
paint2Fill.color = Colors.white.withOpacity(1.0);
canvas.drawPath(path_2,paint2Fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}