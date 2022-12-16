import 'package:flutter/material.dart';

class BottomRightRBMasterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);

    Path bottomRightRoomBRBMPath = Path();
    bottomRightRoomBRBMPath.moveTo(modifiedSize.width * 0.812, modifiedSize.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(modifiedSize.width * 0.885, modifiedSize.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(modifiedSize.width * 0.885, modifiedSize.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(modifiedSize.width * 0.655, modifiedSize.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(modifiedSize.width * 0.655, modifiedSize.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(modifiedSize.width * 0.725, modifiedSize.height * 0.790);

    return bottomRightRoomBRBMPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
