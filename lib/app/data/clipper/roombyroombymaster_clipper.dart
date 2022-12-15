import 'package:flutter/material.dart';

class RBRBMasterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path middleRightRoomBRBMPath = Path();
    middleRightRoomBRBMPath.moveTo(size.width * 0.991, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 1.064, size.height * 0.730);

    return middleRightRoomBRBMPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
