import 'package:flutter/material.dart';

class LivingRoomPainter extends CustomPainter {
  static Path livingRoomPath = Path();
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path livingRoomPath = Path();
    livingRoomPath.moveTo(size.width * 0.285, size.height * 0.466);
    livingRoomPath.lineTo(size.width * 0.285, size.height * 0.68);
    livingRoomPath.lineTo(size.width * 0.332, size.height * 0.68);

    // //canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.402, size.height * 0.68);
    livingRoomPath.lineTo(size.width * 0.655, size.height * 0.68);
    livingRoomPath.lineTo(size.width * 0.655, size.height * 0.765);
    livingRoomPath.lineTo(size.width * 0.725, size.height * 0.765);

    // //canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.812, size.height * 0.765);
    livingRoomPath.lineTo(size.width * 0.905, size.height * 0.765);
    livingRoomPath.lineTo(size.width * 0.905, size.height * 0.710);
    livingRoomPath.lineTo(size.width * 0.991, size.height * 0.710);

    // //canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 1.064, size.height * 0.710);
    livingRoomPath.lineTo(size.width * 1.105, size.height * 0.710);
    livingRoomPath.lineTo(size.width * 1.105, size.height * 0.488);

    ////canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 1.105, size.height * 0.418);
    livingRoomPath.lineTo(size.width * 1.105, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.705, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.705, size.height * 0.301);

    //canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.705, size.height * 0.231);
    livingRoomPath.lineTo(size.width * 0.705, size.height * 0.211);
    livingRoomPath.lineTo(size.width * 0.665, size.height * 0.211);
    livingRoomPath.lineTo(size.width * 0.665, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.555, size.height * 0.330);

    //canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.485, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.285, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.285, size.height * 0.396);

    canvas.drawPath(livingRoomPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
