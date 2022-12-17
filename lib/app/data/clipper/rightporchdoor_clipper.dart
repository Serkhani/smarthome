import 'package:flutter/material.dart';

class RightPorchDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path rightporchdoorPath = Path();
    rightporchdoorPath.moveTo(
        modifiedSize.width * 1.125, modifiedSize.height * 0.488);
    rightporchdoorPath.lineTo(
        modifiedSize.width * 1.125, modifiedSize.height * 0.418);
    rightporchdoorPath.lineTo(
        modifiedSize.width * 1.105, modifiedSize.height * 0.418);
    rightporchdoorPath.lineTo(
        modifiedSize.width * 1.105, modifiedSize.height * 0.488);
    rightporchdoorPath.close();
    return rightporchdoorPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
