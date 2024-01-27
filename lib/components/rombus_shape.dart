import 'package:flutter/material.dart';

class CustomRombusShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = const Color(0xFF828282);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.7, size.height);
    path.lineTo(0, size.height);
    path.cubicTo(size.width * 0, size.height * 1, size.width * 0,
        size.height * 0.9, size.width * 0.3, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
