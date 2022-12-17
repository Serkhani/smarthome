import 'package:flutter/material.dart';

class MasterRoomDoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path masterRoomDoorPath = Path();

    masterRoomDoorPath.moveTo(
        modifiedSize.width * 0.332, modifiedSize.height * 0.70);
    masterRoomDoorPath.lineTo(
        modifiedSize.width * 0.402, modifiedSize.height * 0.70);
    masterRoomDoorPath.lineTo(
        modifiedSize.width * 0.402, modifiedSize.height * 0.68);
    masterRoomDoorPath.lineTo(
        modifiedSize.width * 0.332, modifiedSize.height * 0.68);
    
    masterRoomDoorPath.close();
    return masterRoomDoorPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
