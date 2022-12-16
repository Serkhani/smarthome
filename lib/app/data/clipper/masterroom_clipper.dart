import 'package:flutter/material.dart';

class MasterRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.332, size.height * 0.70);
    path0.lineTo(size.width * 0.145, size.height * 0.70);
    path0.lineTo(size.width * 0.145, size.height * 1.04);
    path0.lineTo(size.width * 0.485, size.height * 1.04);
    path0.lineTo(size.width * 0.485, size.height * 0.860);
    // path0.lineTo(size.width * 0.552, size.height * 0.860);

    // Path path1 = Path();
    // path0.lineTo(size.width * 0.402, size.height * 0.70);
    // path0.lineTo(size.width * 0.635, size.height * 0.70);
    path0.lineTo(size.width * 0.635, size.height * 0.86);
    path0.lineTo(size.width * 0.635, size.height * 0.70);
    // path0.lineTo(size.width * 0.602, size.height * 0.86);
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
