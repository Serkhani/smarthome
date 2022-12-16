import 'package:flutter/material.dart';

class MasterRoomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path masterRoomPath = Path();
    masterRoomPath.moveTo(size.width * 0.332, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.145, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.145, size.height * 1.04);
    masterRoomPath.lineTo(size.width * 0.485, size.height * 1.04);
    masterRoomPath.lineTo(size.width * 0.485, size.height * 0.860);
    masterRoomPath.lineTo(size.width * 0.552, size.height * 0.860);

    canvas.drawPath(masterRoomPath, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    // Path masterRoomPath = Path();
    masterRoomPath.moveTo(size.width * 0.402, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.635, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.635, size.height * 0.86);
    masterRoomPath.lineTo(size.width * 0.602, size.height * 0.86);

    canvas.drawPath(masterRoomPath, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
