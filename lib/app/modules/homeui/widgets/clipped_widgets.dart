import 'package:flutter/material.dart';

class Clip extends StatelessWidget {
  final CustomClipper<Path> clipper;
  final void Function() onPressed;
  const Clip({super.key, required this.clipper, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          constraints: const BoxConstraints.expand(height: 360.0),
          color: Colors.teal,
        ),
      ),
    );
  }
}
