import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smarthome/app/modules/home/controllers/home_controller.dart';
import 'package:smarthome/app/routes/app_pages.dart';

import '../../../data/painter/bottomrightroombmaster.dart';
import '../../../data/painter/livingroompainter.dart';
import '../../../data/painter/masterbathpainter.dart';
import '../../../data/painter/masterroompainter.dart';
import '../../../data/painter/middlerightrbrbmaster.dart';
import '../../../data/painter/startuppainter.dart';
import '../../../data/painter/rightporchpainter.dart';
import '../../../data/painter/topleftroompainter.dart';
import '../../../data/painter/toprightroompainter.dart';

class HouseView extends GetView<HomeController> {
  const HouseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerLeft,
        constraints: const BoxConstraints.expand(),
        child: CustomPaint(
          size: const Size(240.0, 360.0),
          painter: StartUpPainter(),
        ),
      ),
    );
  }
}
