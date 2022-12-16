import 'package:flutter/material.dart';

class MasterBathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);

    Path path0 = Path();
    path0.moveTo(modifiedSize.width * 0.552, modifiedSize.height * 0.88);
    path0.lineTo(modifiedSize.width * 0.505, modifiedSize.height * 0.88);
    path0.lineTo(modifiedSize.width * 0.505, modifiedSize.height * 1.04);
    path0.lineTo(modifiedSize.width * 0.635, modifiedSize.height * 1.04);
    path0.lineTo(modifiedSize.width * 0.635, modifiedSize.height * 0.88);
    path0.lineTo(modifiedSize.width * 0.602, modifiedSize.height * 0.88);
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
