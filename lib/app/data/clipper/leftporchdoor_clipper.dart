import 'package:flutter/material.dart';

class LeftPorchDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);

    Path leftporchdoor = Path();
    leftporchdoor.moveTo(
        modifiedSize.width * 0.265, modifiedSize.height * 0.396);
    leftporchdoor.lineTo(
        modifiedSize.width * 0.265, modifiedSize.height * 0.466);
    leftporchdoor.lineTo(
        modifiedSize.width * 0.285, modifiedSize.height * 0.466);
    leftporchdoor.lineTo(
        modifiedSize.width * 0.285, modifiedSize.height * 0.396);
    leftporchdoor.close();
    return leftporchdoor;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
