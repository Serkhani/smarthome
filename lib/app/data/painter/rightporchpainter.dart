import 'package:flutter/material.dart';


class RightPorchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path rightporch = Path();
    rightporch.moveTo(size.width * 1.125, size.height * 0.488);
    rightporch.lineTo(size.width * 1.125, size.height * 0.79);
    rightporch.lineTo(size.width * 1.405, size.height * 0.79);
    rightporch.lineTo(size.width * 1.405, size.height * 0.555);
    rightporch.lineTo(size.width * 1.305, size.height * 0.555);
    rightporch.lineTo(size.width * 1.305, size.height * 0.330);
    rightporch.lineTo(size.width * 1.125, size.height * 0.330);
    rightporch.lineTo(size.width * 1.125, size.height * 0.418);

    canvas.drawPath(rightporch, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

