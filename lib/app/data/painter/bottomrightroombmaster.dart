import 'package:flutter/material.dart';

class BottomRightRoomByMasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path bottomRightRoomBRBMPath = Path();
    bottomRightRoomBRBMPath.moveTo(size.width * 0.812, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.725, size.height * 0.790);

    canvas.drawPath(bottomRightRoomBRBMPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

