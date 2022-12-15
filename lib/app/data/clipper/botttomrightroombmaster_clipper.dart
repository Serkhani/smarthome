import 'package:flutter/material.dart';

class BottomRightRBMasterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path bottomRightRoomBRBMPath = Path();
    bottomRightRoomBRBMPath.moveTo(size.width * 0.812, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.725, size.height * 0.790);

    return bottomRightRoomBRBMPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
