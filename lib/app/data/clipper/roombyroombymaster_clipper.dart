import 'package:flutter/material.dart';

class RBRBMasterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path middleRightRoomBRBMPath = Path();
    middleRightRoomBRBMPath.moveTo(modifiedSize.width * 0.991, modifiedSize.height * 0.730);
    middleRightRoomBRBMPath.lineTo(modifiedSize.width * 0.925, modifiedSize.height * 0.730);
    middleRightRoomBRBMPath.lineTo(modifiedSize.width * 0.925, modifiedSize.height * 0.790);
    middleRightRoomBRBMPath.lineTo(modifiedSize.width * 0.905, modifiedSize.height * 0.790);
    middleRightRoomBRBMPath.lineTo(modifiedSize.width * 0.905, modifiedSize.height * 0.97);
    middleRightRoomBRBMPath.lineTo(modifiedSize.width * 1.105, modifiedSize.height * 0.97);
    middleRightRoomBRBMPath.lineTo(modifiedSize.width * 1.105, modifiedSize.height * 0.730);
    middleRightRoomBRBMPath.lineTo(modifiedSize.width * 1.064, modifiedSize.height * 0.730);

    return middleRightRoomBRBMPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
