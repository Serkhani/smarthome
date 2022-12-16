import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:smarthome/app/routes/app_pages.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  AnimationController? outerController;
  AnimationController? scaleController;
  AnimationController? roomsController;
  Animation<double>? scaleAnimation;
  Animation<double>? outerAnimation;
  Animation<double>? roomsAnimation;

  final count = 0.obs;
  @override
  void onInit() {
    outerController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    roomsController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    scaleController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        reverseDuration: const Duration(seconds: 1));
    scaleAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(scaleController!);
    outerAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(outerController!);
    roomsAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(roomsController!);

    outerController!.addListener(
      () {
        update(['animation']);
        if (outerAnimation!.isCompleted) {
          roomsController!.forward();
        }
      },
    );

    scaleController!.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        Get.offNamed(Routes.HOMEUI);
      }
    });

    scaleController!.addListener(() {
      if (scaleController!.isAnimating) {
        update(['animation']);
      }
    });

    roomsController!.addListener(
      () {
        update(['animation']);
        if (roomsController!.isCompleted) {
          scaleController!.reverse();
        }
      },
    );

    super.onInit();
  }

  @override
  void onReady() {
    Timer(
      const Duration(seconds: 1),
      () {
        outerController!.forward();
        scaleController!.forward();
      },
    );
    super.onReady();
  }

  @override
  void onClose() {
    roomsController!.dispose();
    outerController!.dispose();
    scaleController!.dispose();
    super.onClose();
  }
}
