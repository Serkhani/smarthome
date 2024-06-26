import 'dart:ui';

import 'package:flutter/material.dart';

class StartUpPainter extends CustomPainter {
  final double? outerprogress;
  final double? roomsprogress;
  final Color color;
  StartUpPainter({required this.outerprogress, required this.roomsprogress, this.color = const Color.fromARGB(255, 33, 150, 243)});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path outerPath = Path();
    outerPath.moveTo(size.width * 0.125, size.height * 0.06);
    outerPath.lineTo(size.width * 0.125, size.height * 1.02);
    outerPath.lineTo(size.width * 0.905, size.height * 1.02);
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

    //canvas.drawPath(outerPath, paint);
    animatePath(outerPath, paint, canvas, outerprogress!);

    Path leftPorchPath = Path();
    leftPorchPath.moveTo(size.width * 0.265, size.height * 0.396);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.466);

    //canvas.drawPath(leftPorchPath, paint);
    animatePath(leftPorchPath, paint, canvas, roomsprogress!);

    Path rightPorchPath = Path();
    rightPorchPath.moveTo(size.width * 1.125, size.height * 0.488);
    rightPorchPath.lineTo(size.width * 1.125, size.height * 0.79);
    rightPorchPath.lineTo(size.width * 1.405, size.height * 0.79);
    rightPorchPath.lineTo(size.width * 1.405, size.height * 0.555);
    rightPorchPath.lineTo(size.width * 1.305, size.height * 0.555);
    rightPorchPath.lineTo(size.width * 1.305, size.height * 0.330);
    rightPorchPath.lineTo(size.width * 1.125, size.height * 0.330);
    rightPorchPath.lineTo(size.width * 1.125, size.height * 0.418);

    ////canvas.drawPath(rightPorchPath, paint);
    animatePath(rightPorchPath, paint, canvas, roomsprogress!);

    Path middleRightRoomBRBMPath = Path();
    middleRightRoomBRBMPath.moveTo(size.width * 0.991, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 1.064, size.height * 0.730);

    //canvas.drawPath(middleRightRoomBRBMPath, paint);
    animatePath(middleRightRoomBRBMPath, paint, canvas, roomsprogress!);

    Path bottomRightRoomBRBMPath = Path();
    bottomRightRoomBRBMPath.moveTo(size.width * 0.812, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 1.0);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 1.0);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.725, size.height * 0.790);

    //canvas.drawPath(bottomRightRoomBRBMPath, paint);
    animatePath(bottomRightRoomBRBMPath, paint, canvas, roomsprogress!);

    Path topRightRoomPath = Path();
    topRightRoomPath.moveTo(size.width * 0.725, size.height * 0.231);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.301);

    //canvas.drawPath(topRightRoomPath, paint);
    animatePath(topRightRoomPath, paint, canvas, roomsprogress!);

    Path topLeftRoomPath = Path();
    topLeftRoomPath.moveTo(size.width * 0.485, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.555, size.height * 0.31);

    //canvas.drawPath(topLeftRoomPath, paint);
    animatePath(topLeftRoomPath, paint, canvas, roomsprogress!);

    Path livingRoomPath = Path();
    livingRoomPath.moveTo(size.width * 0.285, size.height * 0.466);
    livingRoomPath.lineTo(size.width * 0.285, size.height * 0.68);
    livingRoomPath.lineTo(size.width * 0.332, size.height * 0.68);

    // ////canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.402, size.height * 0.68);
    livingRoomPath.lineTo(size.width * 0.655, size.height * 0.68);
    livingRoomPath.lineTo(size.width * 0.655, size.height * 0.765);
    livingRoomPath.lineTo(size.width * 0.725, size.height * 0.765);

    // ////canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.812, size.height * 0.765);
    livingRoomPath.lineTo(size.width * 0.905, size.height * 0.765);
    livingRoomPath.lineTo(size.width * 0.905, size.height * 0.710);
    livingRoomPath.lineTo(size.width * 0.991, size.height * 0.710);

    // ////canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 1.064, size.height * 0.710);
    livingRoomPath.lineTo(size.width * 1.105, size.height * 0.710);
    livingRoomPath.lineTo(size.width * 1.105, size.height * 0.488);

    //////canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 1.105, size.height * 0.418);
    livingRoomPath.lineTo(size.width * 1.105, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.705, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.705, size.height * 0.301);

    ////canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.705, size.height * 0.231);
    livingRoomPath.lineTo(size.width * 0.705, size.height * 0.211);
    livingRoomPath.lineTo(size.width * 0.665, size.height * 0.211);
    livingRoomPath.lineTo(size.width * 0.665, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.555, size.height * 0.330);

    ////canvas.drawPath(livingRoomPath, paint);

    livingRoomPath.moveTo(size.width * 0.485, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.285, size.height * 0.330);
    livingRoomPath.lineTo(size.width * 0.285, size.height * 0.396);

    //canvas.drawPath(livingRoomPath, paint);
    animatePath(livingRoomPath, paint, canvas, roomsprogress!);

    Path masterBathPath = Path();
    masterBathPath.moveTo(size.width * 0.552, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.505, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.505, size.height * 1.0);
    masterBathPath.lineTo(size.width * 0.635, size.height * 1.0);
    masterBathPath.lineTo(size.width * 0.635, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.602, size.height * 0.88);

    //canvas.drawPath(masterBathPath, paint);
    animatePath(masterBathPath, paint, canvas, roomsprogress!);

    Path masterRoomPath = Path();
    masterRoomPath.moveTo(size.width * 0.332, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.145, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.145, size.height * 1.00);
    masterRoomPath.lineTo(size.width * 0.485, size.height * 1.00);
    masterRoomPath.lineTo(size.width * 0.485, size.height * 0.860);
    masterRoomPath.lineTo(size.width * 0.552, size.height * 0.860);

    // //canvas.drawPath(masterRoomPath, paint);

    masterRoomPath.moveTo(size.width * 0.402, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.635, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.635, size.height * 0.86);
    masterRoomPath.lineTo(size.width * 0.602, size.height * 0.86);

    //canvas.drawPath(masterRoomPath, paint);
    animatePath(masterRoomPath, paint, canvas, roomsprogress!);
  }

  animatePath(Path path, Paint paint, Canvas canvas, double progress) {
    PathMetrics pathMetrics = path.computeMetrics();
    for (PathMetric pathMetric in pathMetrics) {
      Path path_ = pathMetric.extractPath(0.0, pathMetric.length * progress);
      canvas.drawPath(path_, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
