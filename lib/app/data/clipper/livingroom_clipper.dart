import 'package:flutter/material.dart';

class LivingRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.285, size.height * 0.466);
    path0.lineTo(size.width * 0.285, size.height * 0.68);
    path0.lineTo(size.width * 0.332, size.height * 0.68);

    path0.lineTo(size.width * 0.402, size.height * 0.68);
    path0.lineTo(size.width * 0.655, size.height * 0.68);
    path0.lineTo(size.width * 0.655, size.height * 0.765);
    path0.lineTo(size.width * 0.725, size.height * 0.765);

    path0.lineTo(size.width * 0.812, size.height * 0.765);
    path0.lineTo(size.width * 0.905, size.height * 0.765);
    path0.lineTo(size.width * 0.905, size.height * 0.710);
    path0.lineTo(size.width * 0.991, size.height * 0.710);

    path0.lineTo(size.width * 1.064, size.height * 0.710);
    path0.lineTo(size.width * 1.105, size.height * 0.710);
    path0.lineTo(size.width * 1.105, size.height * 0.488);

    path0.lineTo(size.width * 1.105, size.height * 0.418);
    path0.lineTo(size.width * 1.105, size.height * 0.330);
    path0.lineTo(size.width * 0.705, size.height * 0.330);
    path0.lineTo(size.width * 0.705, size.height * 0.301);

    path0.lineTo(size.width * 0.705, size.height * 0.231);
    path0.lineTo(size.width * 0.705, size.height * 0.211);
    path0.lineTo(size.width * 0.665, size.height * 0.211);
    path0.lineTo(size.width * 0.665, size.height * 0.330);
    path0.lineTo(size.width * 0.555, size.height * 0.330);

    path0.lineTo(size.width * 0.485, size.height * 0.330);
    path0.lineTo(size.width * 0.285, size.height * 0.330);
    path0.lineTo(size.width * 0.285, size.height * 0.396);

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
