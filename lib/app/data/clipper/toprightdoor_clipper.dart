import 'package:flutter/material.dart';

class TopRightDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path topRightDoorPath = Path();
    topRightDoorPath.moveTo(
        modifiedSize.width * 0.725, modifiedSize.height * 0.301);
    topRightDoorPath.lineTo(
        modifiedSize.width * 0.725, modifiedSize.height * 0.231);
    topRightDoorPath.lineTo(
        modifiedSize.width * 0.705, modifiedSize.height * 0.231);
    topRightDoorPath.lineTo(
        modifiedSize.width * 0.705, modifiedSize.height * 0.301);
    topRightDoorPath.close();
    return topRightDoorPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
