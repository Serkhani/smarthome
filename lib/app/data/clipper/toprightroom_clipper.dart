import 'package:flutter/material.dart';

class TopRightRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path topRightRoomPath = Path();
    topRightRoomPath.moveTo(size.width * 0.725, size.height * 0.231);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.301);

    return topRightRoomPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
