import 'package:flutter/material.dart';

class PorchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path outerPath = Path();
    outerPath.moveTo(size.width * 0.125, size.height * 0.06);
    outerPath.lineTo(size.width * 0.125, size.height * 1.06);
    outerPath.lineTo(size.width * 0.905, size.height * 1.06);
    outerPath.lineTo(size.width * 0.905, size.height * 0.99);
    outerPath.lineTo(size.width * 1.125, size.height * 0.99);
    outerPath.lineTo(size.width * 1.125, size.height * 0.81);
    outerPath.lineTo(size.width * 1.425, size.height * 0.81);
    outerPath.lineTo(size.width * 1.425, size.height * 0.535);
    outerPath.lineTo(size.width * 1.325, size.height * 0.535);
    outerPath.lineTo(size.width * 1.325, size.height * 0.31);
    outerPath.lineTo(size.width * 1.025, size.height * 0.31);
    outerPath.lineTo(size.width * 1.025, size.height * 0.06);
    outerPath.close();

    canvas.drawPath(outerPath, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path leftPorchPath = Path();
    leftPorchPath.moveTo(size.width * 0.265, size.height * 0.396);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.466);

    canvas.drawPath(leftPorchPath, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
