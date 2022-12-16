import 'package:flutter/material.dart';

class PorchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path outerPath = Path();
    outerPath.moveTo(size.width * 0.125, size.height * 0.06);
    outerPath.lineTo(size.width * 0.125, size.height * 1.06);
    outerPath.lineTo(size.width * 0.905, size.height * 1.06);
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

    canvas.drawPath(outerPath, paint0);

    Path leftPorchPath = Path();
    leftPorchPath.moveTo(size.width * 0.265, size.height * 0.396);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.466);

    canvas.drawPath(leftPorchPath, paint0);

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

    Path bottomRightRoomBRBMPath = Path();
    bottomRightRoomBRBMPath.moveTo(size.width * 0.812, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.725, size.height * 0.790);

    canvas.drawPath(bottomRightRoomBRBMPath, paint0);

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

    Path topLeftRoomPath = Path();
    topLeftRoomPath.moveTo(size.width * 0.485, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.555, size.height * 0.31);

    canvas.drawPath(topLeftRoomPath, paint0);

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

    canvas.drawPath(livingRoomPath, paint0);

    Path masterBathPath = Path();
    masterBathPath.moveTo(size.width * 0.552, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.505, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.505, size.height * 1.04);
    masterBathPath.lineTo(size.width * 0.635, size.height * 1.04);
    masterBathPath.lineTo(size.width * 0.635, size.height * 0.88);
    masterBathPath.lineTo(size.width * 0.602, size.height * 0.88);

    canvas.drawPath(masterBathPath, paint0);

    Path masterRoomPath = Path();
    masterRoomPath.moveTo(size.width * 0.332, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.145, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.145, size.height * 1.04);
    masterRoomPath.lineTo(size.width * 0.485, size.height * 1.04);
    masterRoomPath.lineTo(size.width * 0.485, size.height * 0.860);
    masterRoomPath.lineTo(size.width * 0.552, size.height * 0.860);

    canvas.drawPath(masterRoomPath, paint0);

    masterRoomPath.moveTo(size.width * 0.402, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.635, size.height * 0.70);
    masterRoomPath.lineTo(size.width * 0.635, size.height * 0.86);
    masterRoomPath.lineTo(size.width * 0.602, size.height * 0.86);

    canvas.drawPath(masterRoomPath, paint0);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
