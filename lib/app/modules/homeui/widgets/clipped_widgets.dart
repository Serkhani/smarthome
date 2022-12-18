import 'package:flutter/material.dart';

class Clip extends StatelessWidget {
  final CustomClipper<Path> clipper;
  final void Function() onPressed;
  final Color color;
  const Clip(
      {super.key,
      required this.clipper,
      required this.onPressed,
      this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          constraints: const BoxConstraints.expand(height: 360.0),
          color: color,
        ),
      ),
    );
  }
}
