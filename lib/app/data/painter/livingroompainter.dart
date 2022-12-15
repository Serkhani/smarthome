import 'package:flutter/material.dart';

class LivingRoomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.285, size.height * 0.466);
    path0.lineTo(size.width * 0.285, size.height * 0.68);
    path0.lineTo(size.width * 0.332, size.height * 0.68);

    canvas.drawPath(path0, paint);

    Path path1 = Path();
    path1.moveTo(size.width * 0.402, size.height * 0.68);
    path1.lineTo(size.width * 0.655, size.height * 0.68);
    path1.lineTo(size.width * 0.655, size.height * 0.765);
    path1.lineTo(size.width * 0.725, size.height * 0.765);

    canvas.drawPath(path1, paint);

    Path path2 = Path();
    path2.moveTo(size.width * 0.812, size.height * 0.765);
    path2.lineTo(size.width * 0.905, size.height * 0.765);
    path2.lineTo(size.width * 0.905, size.height * 0.710);
    path2.lineTo(size.width * 0.991, size.height * 0.710);

    canvas.drawPath(path2, paint);

    Path path3 = Path();
    path3.moveTo(size.width * 1.064, size.height * 0.710);
    path3.lineTo(size.width * 1.105, size.height * 0.710);
    path3.lineTo(size.width * 1.105, size.height * 0.488);

    canvas.drawPath(path3, paint);

    Path path4 = Path();
    path4.moveTo(size.width * 1.105, size.height * 0.418);
    path4.lineTo(size.width * 1.105, size.height * 0.330);
    path4.lineTo(size.width * 0.705, size.height * 0.330);
    path4.lineTo(size.width * 0.705, size.height * 0.301);

    canvas.drawPath(path4, paint);

    Path path5 = Path();
    path5.moveTo(size.width * 0.705, size.height * 0.231);
    path5.lineTo(size.width * 0.705, size.height * 0.211);
    path5.lineTo(size.width * 0.665, size.height * 0.211);
    path5.lineTo(size.width * 0.665, size.height * 0.330);
    path5.lineTo(size.width * 0.555, size.height * 0.330);

    canvas.drawPath(path5, paint);

    Path path6 = Path();
    path6.moveTo(size.width * 0.485, size.height * 0.330);
    path6.lineTo(size.width * 0.285, size.height * 0.330);
    path6.lineTo(size.width * 0.285, size.height * 0.396);

    canvas.drawPath(path6, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}