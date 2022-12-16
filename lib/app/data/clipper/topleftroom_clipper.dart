import 'package:flutter/material.dart';

class TopLeftRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path topLeftRoomPath = Path();
    topLeftRoomPath.moveTo(modifiedSize.width * 0.485, modifiedSize.height * 0.31);
    topLeftRoomPath.lineTo(modifiedSize.width * 0.285, modifiedSize.height * 0.31);
    topLeftRoomPath.lineTo(modifiedSize.width * 0.285, modifiedSize.height * 0.08);
    topLeftRoomPath.lineTo(modifiedSize.width * 0.645, modifiedSize.height * 0.08);
    topLeftRoomPath.lineTo(modifiedSize.width * 0.645, modifiedSize.height * 0.31);
    topLeftRoomPath.lineTo(modifiedSize.width * 0.555, modifiedSize.height * 0.31);

    return topLeftRoomPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
