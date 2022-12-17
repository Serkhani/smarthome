import 'package:flutter/material.dart';

class RBRBMasterDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path rbrbmasterdoorPath = Path();
    rbrbmasterdoorPath.moveTo(
        modifiedSize.width * 0.991, modifiedSize.height * 0.730);
    rbrbmasterdoorPath.lineTo(
        modifiedSize.width * 1.064, modifiedSize.height * 0.730);
    rbrbmasterdoorPath.lineTo(
        modifiedSize.width * 1.064, modifiedSize.height * 0.710);
    rbrbmasterdoorPath.lineTo(
        modifiedSize.width * 0.991, modifiedSize.height * 0.710);
    rbrbmasterdoorPath.close();

    return rbrbmasterdoorPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
