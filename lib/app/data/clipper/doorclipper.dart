import 'package:flutter/material.dart';

class DoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);

    Path leftporchdoor = Path();
    leftporchdoor.moveTo(modifiedSize.width * 0.1875000, modifiedSize.height * 0.3060000);
    leftporchdoor.lineTo(modifiedSize.width * 0.2025000, modifiedSize.height * 0.3080000);
    leftporchdoor.lineTo(modifiedSize.width * 0.2000000, modifiedSize.height * 0.3600000);
    leftporchdoor.lineTo(modifiedSize.width * 0.1875000, modifiedSize.height * 0.3560000);
    leftporchdoor.lineTo(modifiedSize.width * 0.1875000, modifiedSize.height * 0.3060000);
    leftporchdoor.close();
    return leftporchdoor;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
