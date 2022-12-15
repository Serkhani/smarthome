import 'package:flutter/material.dart';

class RightPorchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path rightporch = Path();
    rightporch.moveTo(size.width * 1.125, size.height * 0.488);
    rightporch.lineTo(size.width * 1.125, size.height * 0.79);
    rightporch.lineTo(size.width * 1.405, size.height * 0.79);
    rightporch.lineTo(size.width * 1.405, size.height * 0.555);
    rightporch.lineTo(size.width * 1.305, size.height * 0.555);
    rightporch.lineTo(size.width * 1.305, size.height * 0.330);
    rightporch.lineTo(size.width * 1.125, size.height * 0.330);
    rightporch.lineTo(size.width * 1.125, size.height * 0.418);
    return rightporch;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
