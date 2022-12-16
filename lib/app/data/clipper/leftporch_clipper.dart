import 'package:flutter/material.dart';

class LeftPorchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);

    Path leftPorchPath = Path();
    leftPorchPath.moveTo(modifiedSize.width * 0.265, modifiedSize.height * 0.396);
    leftPorchPath.lineTo(modifiedSize.width * 0.265, modifiedSize.height * 0.08);
    leftPorchPath.lineTo(modifiedSize.width * 0.145, modifiedSize.height * 0.08);
    leftPorchPath.lineTo(modifiedSize.width * 0.145, modifiedSize.height * 0.68);
    leftPorchPath.lineTo(modifiedSize.width * 0.265, modifiedSize.height * 0.68);
    leftPorchPath.lineTo(modifiedSize.width * 0.265, modifiedSize.height * 0.466);
    return leftPorchPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
