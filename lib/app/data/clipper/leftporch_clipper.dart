import 'package:flutter/material.dart';

class LeftPorchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path leftPorchPath = Path();
    leftPorchPath.moveTo(size.width * 0.265, size.height * 0.396);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.08);
    leftPorchPath.lineTo(size.width * 0.145, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.68);
    leftPorchPath.lineTo(size.width * 0.265, size.height * 0.466);
    return leftPorchPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
