import 'package:flutter/material.dart';

class MasterBathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.552, size.height * 0.88);
    path0.lineTo(size.width * 0.505, size.height * 0.88);
    path0.lineTo(size.width * 0.505, size.height * 1.04);
    path0.lineTo(size.width * 0.635, size.height * 1.04);
    path0.lineTo(size.width * 0.635, size.height * 0.88);
    path0.lineTo(size.width * 0.602, size.height * 0.88);
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
