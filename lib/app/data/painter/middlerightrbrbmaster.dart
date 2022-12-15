import 'package:flutter/material.dart';

class MiddleRightRoomByRoomByMasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path middleRightRoomBRBMPath = Path();
    middleRightRoomBRBMPath.moveTo(size.width * 0.991, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 1.064, size.height * 0.730);

    canvas.drawPath(middleRightRoomBRBMPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

