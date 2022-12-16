import 'package:flutter/material.dart';

class TopRightRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path topRightRoomPath = Path();
    topRightRoomPath.moveTo(modifiedSize.width * 0.725, modifiedSize.height * 0.231);
    topRightRoomPath.lineTo(modifiedSize.width * 0.725, modifiedSize.height * 0.190);
    topRightRoomPath.lineTo(modifiedSize.width * 0.665, modifiedSize.height * 0.190);
    topRightRoomPath.lineTo(modifiedSize.width * 0.665, modifiedSize.height * 0.08);
    topRightRoomPath.lineTo(modifiedSize.width * 1.005, modifiedSize.height * 0.08);
    topRightRoomPath.lineTo(modifiedSize.width * 1.005, modifiedSize.height * 0.31);
    topRightRoomPath.lineTo(modifiedSize.width * 0.725, modifiedSize.height * 0.31);
    topRightRoomPath.lineTo(modifiedSize.width * 0.725, modifiedSize.height * 0.301);

    return topRightRoomPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
