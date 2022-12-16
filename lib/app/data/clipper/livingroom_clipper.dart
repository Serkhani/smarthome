import 'package:flutter/material.dart';

class LivingRoomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path path0 = Path();
    path0.moveTo(modifiedSize.width * 0.285, modifiedSize.height * 0.466);
    path0.lineTo(modifiedSize.width * 0.285, modifiedSize.height * 0.68);
    path0.lineTo(modifiedSize.width * 0.332, modifiedSize.height * 0.68);

    path0.lineTo(modifiedSize.width * 0.402, modifiedSize.height * 0.68);
    path0.lineTo(modifiedSize.width * 0.655, modifiedSize.height * 0.68);
    path0.lineTo(modifiedSize.width * 0.655, modifiedSize.height * 0.765);
    path0.lineTo(modifiedSize.width * 0.725, modifiedSize.height * 0.765);

    path0.lineTo(modifiedSize.width * 0.812, modifiedSize.height * 0.765);
    path0.lineTo(modifiedSize.width * 0.905, modifiedSize.height * 0.765);
    path0.lineTo(modifiedSize.width * 0.905, modifiedSize.height * 0.710);
    path0.lineTo(modifiedSize.width * 0.991, modifiedSize.height * 0.710);

    path0.lineTo(modifiedSize.width * 1.064, modifiedSize.height * 0.710);
    path0.lineTo(modifiedSize.width * 1.105, modifiedSize.height * 0.710);
    path0.lineTo(modifiedSize.width * 1.105, modifiedSize.height * 0.488);

    path0.lineTo(modifiedSize.width * 1.105, modifiedSize.height * 0.418);
    path0.lineTo(modifiedSize.width * 1.105, modifiedSize.height * 0.330);
    path0.lineTo(modifiedSize.width * 0.705, modifiedSize.height * 0.330);
    path0.lineTo(modifiedSize.width * 0.705, modifiedSize.height * 0.301);

    path0.lineTo(modifiedSize.width * 0.705, modifiedSize.height * 0.231);
    path0.lineTo(modifiedSize.width * 0.705, modifiedSize.height * 0.211);
    path0.lineTo(modifiedSize.width * 0.665, modifiedSize.height * 0.211);
    path0.lineTo(modifiedSize.width * 0.665, modifiedSize.height * 0.330);
    path0.lineTo(modifiedSize.width * 0.555, modifiedSize.height * 0.330);

    path0.lineTo(modifiedSize.width * 0.485, modifiedSize.height * 0.330);
    path0.lineTo(modifiedSize.width * 0.285, modifiedSize.height * 0.330);
    path0.lineTo(modifiedSize.width * 0.285, modifiedSize.height * 0.396);

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
