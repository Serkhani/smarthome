import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController? outerController;
  late AnimationController? roomsController;
  late Animation<double>? outerAnimation;
  late Animation<double>? roomsAnimation;

  final count = 0.obs;
  @override
  void onInit() {
    outerController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    roomsController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    outerAnimation =
        Tween<double>(begin: 0.0, end: 0.0).animate(outerController!);
    Timer(
      const Duration(seconds: 1),
      () {
        outerController!.forward();
      },
    );
    outerController!.addListener(
      () {
        if (outerAnimation!.isCompleted) {
          roomsController!.forward();
          roomsAnimation =
              Tween<double>(begin: 0.0, end: 0.0).animate(roomsController!);
        }
      },
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    roomsController!.dispose();
    outerController!.dispose();
    super.onClose();
  }
}
