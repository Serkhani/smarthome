import 'package:flutter/material.dart';

class BRRoomBMasterDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);

    Path bottomRightRoomBMDoorPath = Path();
    bottomRightRoomBMDoorPath.moveTo(
        modifiedSize.width * 0.812, modifiedSize.height * 0.790);
    bottomRightRoomBMDoorPath.lineTo(
        modifiedSize.width * 0.725, modifiedSize.height * 0.790);
    bottomRightRoomBMDoorPath.lineTo(
        modifiedSize.width * 0.725, modifiedSize.height * 0.765);
    bottomRightRoomBMDoorPath.lineTo(
        modifiedSize.width * 0.812, modifiedSize.height * 0.765);
    bottomRightRoomBMDoorPath.close();
    return bottomRightRoomBMDoorPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
