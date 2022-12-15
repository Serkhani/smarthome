import 'package:flutter/material.dart';

class TopLeftRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path topLeftRoomPath = Path();
    topLeftRoomPath.moveTo(size.width * 0.485, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.555, size.height * 0.31);

    return topLeftRoomPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
