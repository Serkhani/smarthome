import 'package:flutter/material.dart';

class TopLeftRoomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path topLeftRoomPath = Path();
    topLeftRoomPath.moveTo(size.width * 0.485, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.555, size.height * 0.31);

    canvas.drawPath(topLeftRoomPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

