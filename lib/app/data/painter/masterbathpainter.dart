import 'package:flutter/material.dart';

class MasterBathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;
      
    Path masterBathPath = Path();
    masterBathPath.moveTo(size.width * 0.552, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.505, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.505, size.height * 1.04);
    masterBathPath.lineTo(size.width * 0.635, size.height * 1.04);
    masterBathPath.lineTo(size.width * 0.635, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.602, size.height * 0.88);

    canvas.drawPath(masterBathPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
