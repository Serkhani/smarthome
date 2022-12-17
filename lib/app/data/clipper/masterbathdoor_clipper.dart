import 'package:flutter/material.dart';

class MasterBathDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path masterBathDoorPath = Path();

    masterBathDoorPath.moveTo(
        modifiedSize.width * 0.552, modifiedSize.height * 0.88);
    masterBathDoorPath.lineTo(
        modifiedSize.width * 0.602, modifiedSize.height * 0.88);
    masterBathDoorPath.lineTo(
        modifiedSize.width * 0.602, modifiedSize.height * 0.86);
    masterBathDoorPath.close();
    return masterBathDoorPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
