import 'package:flutter/material.dart';

class DoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path leftporchdoor = Path();
    leftporchdoor.moveTo(size.width * 0.1875000, size.height * 0.3060000);
    leftporchdoor.lineTo(size.width * 0.2025000, size.height * 0.3080000);
    leftporchdoor.lineTo(size.width * 0.2000000, size.height * 0.3600000);
    leftporchdoor.lineTo(size.width * 0.1875000, size.height * 0.3560000);
    leftporchdoor.lineTo(size.width * 0.1875000, size.height * 0.3060000);
    leftporchdoor.close();
    return leftporchdoor;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
