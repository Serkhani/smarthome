import 'package:flutter/material.dart';

class MasterRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path path0 = Path();
    path0.moveTo(modifiedSize.width * 0.332, modifiedSize.height * 0.70);
    path0.lineTo(modifiedSize.width * 0.145, modifiedSize.height * 0.70);
    path0.lineTo(modifiedSize.width * 0.145, modifiedSize.height * 1.04);
    path0.lineTo(modifiedSize.width * 0.485, modifiedSize.height * 1.04);
    path0.lineTo(modifiedSize.width * 0.485, modifiedSize.height * 0.860);
    // path0.lineTo(modifiedSize.width * 0.552, modifiedSize.height * 0.860);

    // Path path1 = Path();
    // path0.lineTo(modifiedSize.width * 0.402, modifiedSize.height * 0.70);
    // path0.lineTo(modifiedSize.width * 0.635, modifiedSize.height * 0.70);
    path0.lineTo(modifiedSize.width * 0.635, modifiedSize.height * 0.86);
    path0.lineTo(modifiedSize.width * 0.635, modifiedSize.height * 0.70);
    // path0.lineTo(modifiedSize.width * 0.602, modifiedSize.height * 0.86);
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
