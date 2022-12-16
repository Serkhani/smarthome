import 'package:flutter/material.dart';

class RightPorchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Size modifiedSize = const Size(240.0, 360.0);
    Path rightporch = Path();
    rightporch.moveTo(modifiedSize.width * 1.125, modifiedSize.height * 0.488);
    rightporch.lineTo(modifiedSize.width * 1.125, modifiedSize.height * 0.79);
    rightporch.lineTo(modifiedSize.width * 1.405, modifiedSize.height * 0.79);
    rightporch.lineTo(modifiedSize.width * 1.405, modifiedSize.height * 0.555);
    rightporch.lineTo(modifiedSize.width * 1.305, modifiedSize.height * 0.555);
    rightporch.lineTo(modifiedSize.width * 1.305, modifiedSize.height * 0.330);
    rightporch.lineTo(modifiedSize.width * 1.125, modifiedSize.height * 0.330);
    rightporch.lineTo(modifiedSize.width * 1.125, modifiedSize.height * 0.418);
    return rightporch;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
