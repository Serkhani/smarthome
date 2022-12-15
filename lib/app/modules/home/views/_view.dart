import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/masterbathpainter.dart';
import '../../../data/masterroompainter.dart';
import '../../../data/painter/bottomrightroombmaster.dart';
import '../../../data/painter/livingroompainter.dart';
import '../../../data/painter/middlerightrbrbmaster.dart';
import '../../../data/painter/rightporchpainter.dart';
import '../../../data/painter/topleftroompainter.dart';
import '../../../data/painter/toprightroompainter.dart';
import '../../../data/porchpainter.dart';

class HouseView extends GetView {
  const HouseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        child: Container(
          alignment: Alignment.centerLeft,
          constraints: const BoxConstraints.expand(),
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: PorchPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: RightPorchPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: MiddleRightRoomByRoomByMasterPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: BottomRightRoomByMasterPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: TopRightRoomPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: TopLeftRoomPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: LivingRoomPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: MasterBathPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: MasterRoomPainter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


