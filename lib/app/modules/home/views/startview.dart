import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smarthome/app/modules/home/controllers/home_controller.dart';

import '../../../data/painter/startuppainter.dart';

class HouseView extends GetView<HomeController> {
  const HouseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerLeft,
        constraints: const BoxConstraints.expand(),
        child: GetBuilder<HomeController>(
          id: 'animation',
          builder: (_) {
            return Transform.scale(
              scale: controller.scaleAnimation!.value,
              child: CustomPaint(
                size: const Size(240.0, 360.0),
                painter: StartUpPainter(
                    outerprogress: controller.outerAnimation!.value,
                    roomsprogress: controller.roomsAnimation!.value),
              ),
            );
          },
        ),
      ),
    );
  }
}
