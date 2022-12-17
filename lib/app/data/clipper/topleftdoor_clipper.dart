import 'package:flutter/material.dart';

class TopLeftDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path topLeftDoorPath = Path();
    topLeftDoorPath.moveTo(
        modifiedSize.width * 0.485, modifiedSize.height * 0.31);
    topLeftDoorPath.lineTo(
        modifiedSize.width * 0.555, modifiedSize.height * 0.31);
    topLeftDoorPath.lineTo(
        modifiedSize.width * 0.555, modifiedSize.height * 0.33);
    topLeftDoorPath.moveTo(
        modifiedSize.width * 0.485, modifiedSize.height * 0.33);
    topLeftDoorPath.close();
    return topLeftDoorPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
