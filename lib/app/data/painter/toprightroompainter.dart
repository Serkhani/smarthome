import 'package:flutter/material.dart';

class TopRightRoomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path topRightRoomPath = Path();
    topRightRoomPath.moveTo(size.width * 0.725, size.height * 0.231);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.301);

    canvas.drawPath(topRightRoomPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

